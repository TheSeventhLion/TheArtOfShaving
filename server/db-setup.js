const app = require('./server');
const db = app.get('db');
const config = require('./config');

var allowConsoleOutput = config.initialize_log;
var log = function(input) {
  if(allowConsoleOutput) {
    console.log(input);
  }
};

module.exports = {
  run: function() {
    console.log('Initializing Database');

    db.build_tables(function(err, table) {
      if (err) return console.log('Error loading tables - file: .db-setup.js:17', err);
      else console.log('Tables loaded');
    });
  }

};


