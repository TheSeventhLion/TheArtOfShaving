angular.module('TAOS')
    .controller('productCtrl', function(productSVC, $scope , $state, $stateParams){


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



















});



