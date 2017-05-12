var app = require('./server.js');
var db = app.get('db');


module.exports = {


    get_all_products_by_type : function(req , res){
        let type = "";
        
        switch(req.params.type){
            case "kits" : 
                type = "Shaving Kits";
                break;
            case "razors" :
                type = "Razors";
                break;
            case "brushes":
                type = "Brushes";
                break;
        }



        db.product.get_all_products_by_type( [type] , function(err , response){
            res.status(200).send(response);

        });
    },


    getProducts : function (req , res ){
        db.product.get_products( function ( err , response ) {
            res.status(200).send(response);
        });
    },



    getRazors : function (req , res) {
        db.product.get_products( function ( err , response ) {
            res.status(200).send(response);
        });
    },


    
    getBrushes : function (req , res) {
        db.product.get_products( function ( err , response ) {
            res.status(200).send(response);
        });

    }




















};