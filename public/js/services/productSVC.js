//Anything involving in product data 

angular.module('TAOS')
    .service('productSVC', function($http){
        




// -------------------------SERVICE FUNCTIONS------------------------------------------------------

this.get_all_products = () => {
    return products;

    //this is where the http req's will go
};


this.getProducts = (type) => {

    return $http({
        method : 'GET',
        url : `/api/products/${type}` 
    }).then( function (response){
            return response; 
    });
};







// -------------------------SERVICE FUNCTIONS---------------------------------------------------60










});