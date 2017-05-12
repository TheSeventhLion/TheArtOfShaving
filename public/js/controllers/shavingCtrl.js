angular.module('TAOS')
    .controller('shavingCtrl', function(shavingSVC, productSVC, $scope, $stateParams){

        $scope.kits = false;
        $scope.razors = false;
        $scope.brushes = false;

console.log('params', $stateParams);

$scope.getProducts = () => {
    productSVC.getProducts($stateParams.type).then(function (response){
        console.log(response);
        $scope.products = response.data;
        $scope[$stateParams.type] = true;
    });
};
$scope.getProducts();























    });