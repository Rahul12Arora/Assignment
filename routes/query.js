const express = require('express');
const router = express.Router();
const db = require('../mysql-setup'); // Import MySQL connection
const util = require('util');
const customers = require('../sampleData/customer'); // Import customer routes
// Promisify db.query for async/await usage
const query = util.promisify(db.query).bind(db);

router.get('/addCustomers', (req, res) => {
    
  res.send('Customer route root');
});

module.exports = router;
