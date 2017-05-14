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

this.getDetails = (id) => {
    console.log('GetDetails', id);
    return $http({
        method: 'GET',
        url: `/api/product/${id}`
    }).then(function (response){
        return response; 
    });
};

this.addToCart = (id, qty) => {
    console.log('id,qty' , id , qty);
    return $http({
      method: 'POST',
      url: '/api/order/add',
      data: {
        product_id: id,
        qty: qty
      }
    }).then(function (response){
        return responce; 
    });
  };

    });