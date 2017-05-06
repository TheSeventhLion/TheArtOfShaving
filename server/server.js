var express = require("express");
var massive = require('massive');
var connectionString = require("./config.js")
var config = require("./config.js")
var massiveInstance = massive.connectSync({
    connectionString: connectionString.connectionString
})
var session = require('express-session');
var passport = require('passport');
var Auth0Strategy = require('passport-auth0');
var bodyParser = require('body-parser');
var cors = require('cors');
// var stripe = require('stripe')(config.STRIPE_KEYS.secretKey);
var port = 3000;


var app = module.exports = express();
app.use(express.static(__dirname));
app.use(bodyParser.json());
app.use(cors());

app.set('db', massiveInstance);
var db = app.get('db');
var mainCtrl = require('./mainCtrl')

app.use(session({
    secret: config.secret
}));
app.use(passport.initialize());
app.use(passport.session());


app.listen(3000, function (){
    console.log('listenting on ' + port);
});