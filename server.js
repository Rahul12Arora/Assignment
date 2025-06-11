const express = require('express');
const app = express();
const PORT = 5000;
const sanitationMiddleware = require('./services/sanitationMiddleware');
const fieldBasedSanitationMiddleware = require('./services/fieldBasedSanitationMiddleware');
const routes = require('./routes'); // Import routes

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(sanitationMiddleware)
app.use(fieldBasedSanitationMiddleware); // Apply sanitation middleware
app.use('/', routes); // Use routes

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
