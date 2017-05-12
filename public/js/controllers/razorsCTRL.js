angular.module('TAOS')
    .controller('razorsCtrl', function(razorsSVC, productSVC, $scope){
    


$scope.getProducts = () => {
    productSVC.getRazors().then(function (response){
        console.log(response);
        $scope.products = response.data;
    });
};
$scope.getProducts();















































    });

