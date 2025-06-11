const { body } = require('express-validator');

function fieldBasedSanitationMiddleware(req, res, next) {
  body('name').trim().escape(),
  body('email').trim().normalizeEmail(),
  body('phone').trim().escape(),
  body('password').trim().escape()
  next();
}

module.exports = fieldBasedSanitationMiddleware;