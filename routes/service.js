const express = require('express');
const router = express.Router();
const db = require('../mysql-setup'); // Import MySQL connection
const util = require('util');
const {hashPassword, checkUserLogin} = require('../services/hashPass')
const query = util.promisify(db.query).bind(db);
var jwt = require('jsonwebtoken');
const jwtAuthenticateMiddleware = require('../services/jwtAuthenticateMiddleware');

router.post('/newService', jwtAuthenticateMiddleware, async (req, res) => {
  try{
    const { VIN, serviceType, serviceDate, notes } = req.body;
    console.log('Creating new service with data:', req.body);

    let vehicleResult = await query('SELECT * FROM VEHICLE WHERE VIN = ?', [VIN]);
    if (!vehicleResult.length) {
      return res.status(404).json({ error: 'Vehicle not found' });
    }
    if(vehicleResult[0].customerDetails_id !== req.user.ID) {
      return res.status(403).json({ error: 'You do not have permission to create a service for this vehicle' });
    }

    const serviceStatus_id = 1;
    vehicleResult = vehicleResult[0]; // Get the first (also only) vehicle object
    // Insert new service

    //random number between 1 & 25
    const staffDetails_id = Math.floor(Math.random() * 25) + 1;
    const newServiceResult = await query('INSERT INTO servicemanagement (vehicle_id, serviceType, serviceDate, notes, customerDetails_id, serviceStatus_id, staffDetails_id) VALUES (?,?,?,?,?,?,?)', [vehicleResult.ID, serviceType, serviceDate, notes, req.user.ID, serviceStatus_id, staffDetails_id]);
    return res.json({ message: 'Service created', newServiceResult: newServiceResult });
  }
  catch(err){
    console.error('Error creating new service:', err);
    res.status(500).json({ error: 'Database error' });
  }
});

router.get('/serviceHistoryAll', jwtAuthenticateMiddleware, async (req, res) => {
  try{
    const query = await query('SELECT * FROM servicemanagement WHERE customerDetails_id =?', [req.user.ID]);
  }
  catch(err){
    console.error('Error fetching service history:', err);
    res.status(500).json({ error: 'Database error' });
  }
});

router.get('/serviceHistoryById', jwtAuthenticateMiddleware, async (req, res) => {
  try{
    const query = await query('SELECT * FROM servicemanagement WHERE ID =?', [req.query.ID]);
    if(!query || query.length === 0){
      return res.status(404).json({ message: 'Service not found' });
    }
    if(query[0].customerDetails_id !== req.user.ID) {
      return res.status(403).json({ error: 'You do not have permission to view this service' });
    }
    else{
      return res.json(query[0]);
    }
  }
  catch(err){
    console.error('Error fetching service history:', err);
    res.status(500).json({ error: 'Database error' });
  }
});
module.exports = router;
