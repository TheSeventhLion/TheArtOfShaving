var express = require("express");
var massive = require('massive');
var connectionString = require("./config.js");
var config = require("./config.js");
var session = require('express-session');
var passport = require('passport');
var Auth0Strategy = require('passport-auth0');
var bodyParser = require('body-parser');
var cors = require('cors');
// var stripe = require('stripe')(config.STRIPE_KEYS.secretKey);
var port = 7777;

const app = module.exports = express();

app.use(cors());
app.use(bodyParser.json());
app.use(express.static('./dist'));
app.use(session({
    resave: true,
    saveUninitialized: true,
    secret: config.session_secret

}));



////////////  MASSIVE AND DB SETUP ////////////
const massiveUri = config.massive_URI;
const massiveServer = massive.connectSync({
    connectionString: massiveUri
});
app.set('db', massiveServer);


var db = app.get('db');
var mainDBCtrl = require('./mainDBCtrl');
var dbSetup = require('./db-setup');
dbSetup.run();
////////////////////////////////////////////////

app.use(passport.initialize());
app.use(passport.session());






//////////////////////////// ENDPOINTS/////////////////////////////////////////////


//////////// USER ENDPOINTS  ////////////






//////////// ORDER ENDPOINTS  ////////////







//////////// PRODUCTS ENDPOINTS  ////////////
app.get('/api/products' , mainDBCtrl.getProducts )
// app.get('/api/store/fullkits',    shavingCTRL.fullkits);
// app.get('/api/store/midkits',     shavingCTRL.midkits);
// app.get('/api/store/starterkits', shavingCTRL.starterkits);
// app.get('/api/store/:id',         shavingCTRL.getProductDetails);
app.get('/api/store/:type' , mainDBCtrl.get_all_products_by_type);

















app.listen(port, function (){
    console.log('Initiate the Death Star on port' , port);
});







