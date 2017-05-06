angular.module('TAOS')
    .controller('shavingCtrl', function(shavingSVC, productSVC, $scope){

$scope.products = productSVC.get_all_products();

















    });