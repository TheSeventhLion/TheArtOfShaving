var app = require('./server.js');
var db = app.get('db');


module.exports = {


    get_all_products_by_type : function(req , res){
        db.product.get_all_products_by_type( [req.params.type] , function(err , response){
            res.status(200).send(response);

        });
    },

    getProducts : function (req , res ){
        db.product.get_products( function (err , response ) {
            res.status(200).send(response);
        });
    }
    





















};