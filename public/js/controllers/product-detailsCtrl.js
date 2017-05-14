angular.module('TAOS').controller('product-detailsCtrl', function( productSVC, $scope, $stateParams){




productSVC.getDetails($stateParams.id).then(function(response){
    $scope.product = response.data[0];
    console.log('product', $scope.product);

});

$scope.addToCart = (id , qty) => {
    productSVC.addToCart ($scope.product.id , qty).then(function (response){
        console.log('response ==>' , response);
    });
};













});