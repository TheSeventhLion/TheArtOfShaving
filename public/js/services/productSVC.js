angular.module('TAOS')
    .service('productSVC', function($http){
        




// -------------------------SERVICE FUNCTIONS------------------------------------------------------
                                    // I dont think this does anything
// this.get_all_products = () => {
//     return products;

//     //this is where the http req's will go
// };


this.getProducts = (type) => {

    return $http({
        method : 'GET',
        url : `/api/products/${type}` 
    }).then( function (response){
            return response; 
    });
};





// ------------------------------------------------------------------------------------------------










});