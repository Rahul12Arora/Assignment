const { sanitizeBody } = require('express-validator');

function sanitationMiddleware(req, res, next) {
  // Sanitize all string fields in req.body
  if (req.body && typeof req.body === 'object') {
    for (const key in req.body) {
      if (typeof req.body[key] === 'string') {
        req.body[key] = req.body[key].trim().replace(/[<>"'`;]/g, '');
      }
    }
  }
  next();
}

module.exports = sanitationMiddleware;