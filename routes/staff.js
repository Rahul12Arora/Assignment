const express = require('express');
const router = express.Router();

router.post('/login', async (req, res) => {
  // console.log('req is ', req.body);
  try{

    let staff = await query('SELECT * FROM staffDetails staffDetails.email = ?', req.body.email)
    if(!staff || staff.length === 0){
      return res.status(404).json({ message: 'staff not found' });
    }

    staff = staff[0]; // Get the first (also only) customer object
    const valid = await checkUserLogin(staff.hashedPass, req.body.password)

    if(valid){
      var token = jwt.sign(staff, 'shhhhh');
      return res.status(200).json({ message: 'Login successful', token: token, staff: staff.id });
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

router.get('/getAssignedServicesAll', async (req, res) => {
  try{
    const services = await query('SELECT * FROM servicemanagement WHERE staffDetails_id = ?', [req.user.ID]);
    if (!services || services.length === 0) {
      return res.status(404).json({ message: 'No assigned services found' });
    }
    else{
      return res.json(services);
    }
  }
  catch(err){
    console.error('Error fetching assigned services:', err);
    res.status(500).json({ error: 'Database error' });
  }
});

router.get('/getAssignedServicesByServiceId', async (req, res) => {
  try{
    const serviceId = req.query.serviceId;
    if (!serviceId) {
      return res.status(400).json({ error: 'Service ID is required' });
    }

    const service = await query('SELECT * FROM servicemanagement WHERE ID = ?', serviceId);
    if (!service || service.length === 0) {
      return res.status(404).json({ message: 'Service not found' });
    }
    else if (service[0].staffDetails_id !== req.user.ID) {
      return res.status(403).json({ error: 'You do not have permission to view this service' });
    }
    else {
      return res.json(service[0]);
    }
    
  }
  catch(error){
    console.error('Error fetching assigned services by date:', error);
    res.status(500).json({ error: 'Database error' });
  }
})

module.exports = router;
