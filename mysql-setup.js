const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'localhost',            // Keep as 'localhost' for local MySQL
  user: 'root',                 // Default MySQL username is often 'root'
  password: '',    // Your MySQL root password (set during MySQL installation)
  database: 'ASSIGNMENT'     // The name of the database you want to use
});

connection.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err.stack);
    return;
  }
  console.log('Connected to MySQL as id', connection.threadId);
});

module.exports = connection;
