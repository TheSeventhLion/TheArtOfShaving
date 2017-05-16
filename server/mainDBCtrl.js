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
///////////////////////////////////////////////////////////////////////////////////////////////
// console.log(type);
    db.product.get_all_products_by_type ( [type] , ( err , response ) => {
// console.log("CTRL line 25" , response);
            res.status(200).send(response);
        });
    },
//////////////////////////////////////////////////////////////////////////////////////////////

    getProducts :  (req , res ) => {
        db.product.get_products( ( err , response ) => {
            res.status(200).send(response);
        });
    },

//////////////////////////////////////////////////////////////////////////////////////////////

    getRazors : function (req , res) {
        db.product.get_products(  ( err , response )  => {
            res.status(200).send(response);
        });
    },

//////////////////////////////////////////////////////////////////////////////////////////////

    getBrushes : function (req , res) {
        db.product.get_products( function ( err , response ) {
            res.status(200).send(response);
        });

    },

//////////////////////////////////////////////////////////////////////////////////////////////

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
//////////////////////////////////////////////////////////////////////////////////////////////

    addToCart: function(req, res, next) {
        console.log('adding product');
        console.log('req.params', req.params);
        console.log('req:', req.body);
        console.log('res:', res.data);
        console.log('req.user' , req.user);

        db.product.add_to_cart([req.user.order_id, req.body.product_id], function(err, product) {
            if (err) {
                console.log('Add to Order err: ', err);
                return res.status(500).send(err);
            }

            return res.status(200).send('Product added to cart');
        });
    },

///////////////////////////////////////////////////////////////////////////////////////////////

        deleteItem: function(req, res, next) {
console.log('removing product');
console.log('req.params', req.params);
console.log('req:', req.body);
console.log('res:', res.data);
            db.product.remove_from_cart([req.params.id], function(err, product){
            if (err) {
                console.log('Remove Item err: ', err);
                return res.status(500).send(err);
            }
            console.log('removed product ', product);
            return res.status(200).send('Product removed from cart');
        });
    },
    
///////////////////////////////////////////////////////////////////////////////////////////////


    getOrder: function(req, res, next) {
console.log('req.user = ' , req.user);
        db.order.read_id([req.user.order_id], function(err, order) {
            if (err) {
                console.log('Order read err: ', err);
                return res.status(500).send(err);
            }

            var totalOrder = {
                order: order[0]
            };
           db.order.get_products([req.user.order_id], (err, products) => {
                if (err) {
                    console.log('Order products read err: ', err);
                    return res.status(500).send(err);
                }

                totalOrder.products = products;

                return res.status(200).send(products);
            });
        })
    }

};

//////////////////////////////////////////////////////////////////////////////////////////////