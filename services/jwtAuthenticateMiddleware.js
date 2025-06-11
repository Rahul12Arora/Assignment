const jwt = require('jsonwebtoken');

function jwtAuthenticateMiddleware(req, res, next) {
  // console.log('JWT Authentication Middleware triggered');
  // console.log('Request Headers:', req.headers);
  // console.log('Request Body:', req.body);
  // Get token from Authorization header: "Bearer <token>"
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1];

  if (!token) {
    return res.status(401).json({ message: 'No token provided' });
  }

  jwt.verify(token, 'shhhhh', (err, user) => {
    if (err) {
      return res.status(403).json({ message: 'Invalid or expired token' });
    }
    req.user = user; // Attach decoded user to request
    console.log('Authenticated user:', req.user);
    next();
  });
}

module.exports = jwtAuthenticateMiddleware;