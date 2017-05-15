angular.module('TAOS').controller('product-detailsCTRL', function( productSVC, $state,$scope, $stateParams){




productSVC.getDetails($stateParams.id).then(function(response){
    $scope.product = response.data[0];
    console.log('product', $scope.product);

});

$scope.addToCart = (id) => {
    productSVC.addToCart (id).then(function (response){
        console.log('response ==>' , response);
        $state.go('cart')
    });
};















});