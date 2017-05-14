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
                type = "razor";
                break;
            case "brushes":
                type = "brush";
                break;
        }


// console.log(type);
    db.product.get_all_products_by_type ( [type] , ( err , response ) => {
// console.log("CTRL line 25" , response);
            res.status(200).send(response);
        });
    },

    getProducts :  (req , res ) => {
        db.product.get_products( ( err , response ) => {
            res.status(200).send(response);
        });
    },

    getRazors : function (req , res) {
        db.product.get_products(  ( err , response )  => {
            res.status(200).send(response);
        });
    },


    getBrushes : function (req , res) {
        db.product.get_products( function ( err , response ) {
            res.status(200).send(response);
        });

    },


    getProductDetails : ( req , res) => {
        console.log('getting product details');
        console.log(req.params)
        let id = req.params.id
        db.product.get_product_details( [id] , function (err , product){
            if (err) {
                return res.status(500).send(err);
            } else {
                return res.send(product);
            }
    });
},

    addToCart: function(req, res, next) {
        console.log('adding product');
        console.log(req.params);
        console.log('req:', req, 'res', res);

        db.product.add_to_cart([req.user.order_id, req.body.product_id, req.body.qty], function(err, product) {
            if (err) {
                console.log('Add to Order err: ', err);
                return res.status(500).send(err);
            }

            return res.status(200).send('Product added to cart');
        });

}





};