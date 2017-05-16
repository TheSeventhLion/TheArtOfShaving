angular.module('TAOS')
    .controller('productCTRL', function(productSVC, $scope , $state, $stateParams, $rootScope){

$rootScope.$on('$stateChangeSuccess', function() {
   document.body.scrollTop = document.documentElement.scrollTop = 0;
});

////////////////////////////////////////////////////////////////////////////////

        $scope.kits = false;
        $scope.razors = false;
        $scope.brushes = false;


// console.log('params', $stateParams);

$scope.getProducts = () => {
    productSVC.getProducts($stateParams.type).then(function (response){
        console.log(response);
        $scope.products = response.data;
        $scope[$stateParams.type] = true;
    });
};
$scope.getProducts();


$scope.addToCart = (id) => {
    productSVC.addToCart (id).then(function (response){

        
        console.log('response ==>' , response);
        // $state.go('cart')
    });
};


















});



