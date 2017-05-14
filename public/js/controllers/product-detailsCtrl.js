//doesnt have a SVC


angular.module('TAOS')
    .controller('product-detailsCtrl', function( productSVC, $scope, $stateParams){



productSVC.getDetails($stateParams.id).then(function(response){
    $scope.product = response.data[0];
    console.log('product', $scope.product);

// if($stateParams.id)



});
});