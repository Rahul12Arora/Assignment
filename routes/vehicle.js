const express = require('express');
const router = express.Router();
const db = require('../mysql-setup'); // Import MySQL connection
const util = require('util');
const jwtAuthenticateMiddleware = require('../services/jwtAuthenticateMiddleware');
// Promisify db.query for async/await usage
const query = util.promisify(db.query).bind(db);

router.post('/addNewVehicle', jwtAuthenticateMiddleware, async (req, res) => {
  const { make, model, year, VIN } = req.body;
  console.log('Adding new vehicle with data:', req.body);
  try {
    // Get or insert make
    let makeResult = await query('SELECT ID FROM MAKE WHERE make = ?', [make]);
    let make_id;
    if (!makeResult.length) {
      const insertMake = await query('INSERT INTO MAKE (make) VALUES (?)', [make]);
      make_id = insertMake.insertId;
    } else {
      make_id = makeResult[0].ID;
    }

    // Get or insert model
    let modelResult = await query('SELECT ID FROM MODEL WHERE model = ?', [model]);
    let model_id;
    if (!modelResult.length) {
      const insertModel = await query('INSERT INTO MODEL (model) VALUES (?)', [model]);
      model_id = insertModel.insertId;
    } else {
      model_id = modelResult[0].ID;
    }

    let VINResult = await query('SELECT ID FROM VEHICLE WHERE VIN = ?', [VIN]);
    if( VINResult.length) {
      return res.status(400).json({ error: 'Vehicle with this VIN already exists' });
    }

    // Insert into vehicles table
    const insertResult = await query(
      'INSERT INTO vehicle (make_id, model_id, year, customerDetails_id, VIN) VALUES (?, ?, ?, ?, ?)',
      [make_id, model_id, year, req.user.ID, VIN]
    );

    res.json({ message: 'Vehicle added', insertId: insertResult.insertId });
  } catch (err) {
    console.error('Error adding vehicle:', err);
    res.status(500).json({ error: 'Database error' });
  }
});

router.get('/info', (req, res) => {
  res.send('Vehicle info');
});

// Sample MySQL fetch query: select all vehicles
router.get('/list', async (req, res) => {
  try {
    const results = await query('SELECT * FROM vehicles');
    res.json(results);
  } catch (err) {
    console.error('Error fetching vehicles:', err);
    res.status(500).json({ error: 'Database error' });
  }
});

router.post('/add', async (req, res) => {
  const { make, model, year } = req.body;
  try {
    const result = await query(
      'INSERT INTO vehicles (make, model, year) VALUES (?, ?, ?)',
      [make, model, year]
    );
    res.json({ message: 'Vehicle added', insertId: result.insertId });
  } catch (err) {
    console.error('Error adding vehicle:', err);
    res.status(500).json({ error: 'Database error' });
  }
});

module.exports = router;
