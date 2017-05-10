angular.module('TAOS')
    .controller('shavingCtrl', function(shavingSVC, productSVC, $scope){




$scope.get_all_products = () => {
    productSVC.get_all_products().then(function (response) {
        console.log(response);
        
    });
};




$scope.getProducts = () => {
    productSVC.getProducts().then(function (response){
        console.log(response);
        $scope.products = response.data;
    });
};

$scope.getProducts();



    });