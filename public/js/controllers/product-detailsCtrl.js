angular.module('TAOS').controller('product-detailsCtrl', function( productSVC, $scope, $stateParams){



productSVC.getDetails($stateParams.id).then(function(response){
    $scope.product = response.data[0];
    console.log('product', $scope.product);

// if($stateParams.id)


$scope.addToCart = (id , qty) => {
    productSVC.addToCart (id , qty).then(function (response){
        console.log('response ==>' , response);
    });
};
$scope.addToCart();




});
});