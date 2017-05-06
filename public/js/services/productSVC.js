//Anything involving in product data 

angular.module('TAOS')
    .service('productSVC', function($http){
        

var products = [
{
    id: "1",
    name: "Unscented Full Size Kit With Genuine Badger Brush",
    img: "../.././images/shaving-kits/image0.png",
    price: "$95.00"
},
{
    id: "2",
    name: "Ocean Kelp Full Size Kit With Genuine Badger Brush",
    img: "../.././images/shaving-kits/image1.png",
    price: "$95.00"
},
{
    id: "3",
    name: "Lavender Full Size Kit With Genuine Badger Brush",
    img: "../.././images/shaving-kits/image20.png",
    price: "$120.00"
},
{
    id: "4",
    name: "Lemon Full Size Kit With Genuine Badger Brush",
    img: "../.././images/shaving-kits/image4.png",
    price: "$120.00"
},
{
    id: "5",
    name: "Unscented Full Size Kit with Pure Badger Brush",
    img: "../.././images/shaving-kits/image5.png",
    price: "$120.00"
},
{
    id: "6",
    name: "Sandalwood Full Size Kit with Pure Shaving Brush",
    img: "../.././images/shaving-kits/image6.png",
    price: "$135.00"
},
{
    id: "7",
    name: "Lavender Full Size Kit with Pure Shaving Brush",
    img: "../.././images/shaving-kits/image21.png",
    price: "$60.00"
},
{
    id: "8",
    name: "Ocean Kelp Full Size Kit with Pure Shaving Brush",
    img: "../.././images/shaving-kits/image20.png",
    price: "$60.00"
},
{
    id: "9",
    name: "Unscented Mid-Size Kit",
    img: "../.././images/shaving-kits/image27.png",
    price: "$60.00"
},

];

//rename all img file n60s



// -------------------------SERVICE FUNCTIONS------------------------------------------------------

this.get_all_products = function (){
    return products;

    //this is where the http req's will go
};





// -------------------------SERVICE FUNCTIONS---------------------------------------------------60











    });