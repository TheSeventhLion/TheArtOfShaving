var app = require('./server.js');
var db = app.get('db');


module.exports = {


additem : function(req , res){
    db.product.add_to_cart( [],
        function(err , response){
            res.status(200).send(response);
        });

}














};