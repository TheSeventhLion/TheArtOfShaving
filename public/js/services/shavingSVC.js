angular.module('TAOS')
    .service('shavingSVC', function($http){
        

//I dont understand how this works
this.getProducts = function(){
    return $http.get('baseURL' + 'shavingkits')
        .then(function( response ) {
            return response;
        });
};
console.log('stuff');














});