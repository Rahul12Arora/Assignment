const express = require('express');
const router = express.Router();
const db = require('../mysql-setup'); // Import MySQL connection
const util = require('util');
const {hashPassword, checkUserLogin} = require('../services/hashPass')
const query = util.promisify(db.query).bind(db);
var jwt = require('jsonwebtoken');

router.post('/login', async (req, res) => {
  // console.log('req is ', req.body);
  try{

    let customer = await query('SELECT * FROM customerdetails WHERE customerdetails.email = ?', req.body.email)
    if(!customer || customer.length === 0){
      return res.status(404).json({ message: 'Customer not found' });
    }

    customer = customer[0]; // Get the first (also only) customer object
    const valid = await checkUserLogin(customer.hashedPass, req.body.password)

    if(valid){
      var token = jwt.sign(customer, 'shhhhh');
      return res.status(200).json({ message: 'Login successful', token: token, customerId: customer.id });
    }
    else{
      res.status(401).json({ message: 'Invalid credentials' });
    }

  }
  catch(err){
    console.error('Error during customer login:', err);
    res.status(500).json({ error: 'Database error' });
  }
});

router.post('/register', async (req, res) => {
  console.log('Creating customer with data:', req.body);
  try{
    let customer = await query('SELECT * FROM customerdetails WHERE customerdetails.email = ?', req.body.email)

    if(customer && customer.length > 0){
      return res.status(400).json({ message: 'Customer already exists' });
    }
    // Hash the password before storing it
    const hashedPass = await hashPassword(req.body.password);
    const newCustomer = await query('INSERT INTO customerdetails (name, email, phone, hashedPass) VALUES (?, ?, ?, ?)', [req.body.name, req.body.email, req.body.phone, hashedPass])
    if(newCustomer && newCustomer.insertId){
      return res.status(201).json({ message: 'Customer created successfully', customerId: newCustomer.insertId });
    }
    else{
      return res.status(500).json({ message: 'Error creating customer' });
    }
  }
  catch(err){
    console.error('Error during customer registration:', err);
    res.status(500).json({ error: 'Database error' });
  }

});

module.exports = router; 

