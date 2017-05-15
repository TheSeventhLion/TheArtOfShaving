angular.module('TAOS')
    .service('cartSVC', function($http){
        


  this.deleteItem = function(id) {
    console.log("Just hit cartSVC");
        return $http({
        method: 'DELETE',
        url: '/api/order/delete/' + id
        });
    };

    this.getOrder = function() {
    return $http({
      method: 'GET',
      url: '/api/order'
    }).then(function(response) {
      console.log('Get Order: ', response);
      return response.data
    });
  };























});