var express = require("express");
var massive = require('massive');
var connectionString = require("./config.js");
var config = require("./config.js");
var session = require('express-session');
var passport = require('passport');
var auth0 = require('passport-auth0');
var bodyParser = require('body-parser');
var cors = require('cors');
// var stripe = require('stripe')(config.STRIPE_KEYS.secretKey);
var port = 7000;

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


////////////  PASSPORT SETUP ////////////
app.use(passport.initialize());
app.use(passport.session());

passport.use(new auth0(config.AUTH_CONFIG, function(accessToken, refreshToken, extraParams, profile, done) {
    db.users.user_email([profile.displayName], function(err, user) {
        if (err) {
            return done(err);
        } else if (!user.length) {
            db.users.create_user([profile.nickname, profile.displayName], function(err, user) {
                if (err) {
                    return done(err);
                }
                console.log('User created');

                db.order.insert([user[0].user_id], function(err, order) {
                    if (err) {
                        console.log('DB Create, durring user create: ', err);
                    }

                    user[0].order_id = order[0].order_id;
                    return done(null, user[0]);
                })
            })
        } else {
            console.log('User found');
            db.order.read_incomplete([user[0].user_id], function(err, order) {
                if (err) {
                    return console.log("Find User Auth, Order not found", err);
                }

                console.log('order: ', order);
                user[0].order_id = order[0].order_id;
                return done(null, user[0]);
            });
        }
    });

}));

passport.serializeUser(function(user, done) {
    done(null, user);
});
passport.deserializeUser(function(user, done) {
    done(null, user);
});

///////////  PASSPORT ENDPOINTS /////////
app.get('/auth', function(req, res, next) {
    if (req.query.state) {
        req.session.state = req.query.state;
    }
    passport.authenticate('auth0')(req, res, next);
});
app.get('/auth/callback', function(req, res, next) {
    var state = 'profile';
    if (req.session.state) {
        state = req.session.state;
    }
    req.session.state = null;

    passport.authenticate('auth0', {
        successRedirect: '/#!/shop',
        failureRedirect: '/#!/shop'
    })(req, res, next);
})
app.get('/api/logout', function(req, res, next) {
    req.logout();
    return res.status(200)
        .send('logged out');
})

/////////// POLICIES ////////////
var isAuthed = function(req, res, next) {
    if (!req.isAuthenticated()) return res.status(401).send();
    return next();
}













































//////////////////////////// ENDPOINTS/////////////////////////////////////////////


//////////// USER ENDPOINTS  ////////////






//////////// ORDER ENDPOINTS  ////////////
app.get('/api/order', mainDBCtrl.getOrder);
app.post('/api/order/add', mainDBCtrl.addToCart);
app.delete('/api/order/delete/:id', mainDBCtrl.deleteItem);
// app.put('/api/order/complete', mainDBCtrl.complete);
// app.get('/api/order', mainDBCtrl.read);
// app.post('/api/order/add', mainDBCtrl.addToCart);
// app.put('/api/order/update/:id', mainDBCtrl.updateItemInCart);



//////////// PRODUCTS ENDPOINTS  ////////////
app.get('/api/products' , mainDBCtrl.getProducts);
app.get('/api/products/:type' , mainDBCtrl.get_all_products_by_type);
app.get('/api/product/:id' , mainDBCtrl.getProductDetails);
















app.listen(port, function (){
    console.log('Initiate the Death Star on port' , port);
});










