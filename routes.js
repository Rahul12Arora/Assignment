const express = require('express');
const router = express.Router();

const vehicleRoutes = require('./routes/vehicle');
const serviceRoutes = require('./routes/service');
const customerRoutes = require('./routes/customer');
const staffRoutes = require('./routes/staff');

router.use('/vehicle', vehicleRoutes);
router.use('/service', serviceRoutes);
router.use('/customer', customerRoutes);
router.use('/staff', staffRoutes);

module.exports = router;
