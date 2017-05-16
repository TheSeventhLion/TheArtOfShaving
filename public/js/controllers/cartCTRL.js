angular.module('TAOS').controller('cartCTRL', function( cartSVC, $scope, $stateParams, $rootScope){

$rootScope.$on('$stateChangeSuccess', function() {
   document.body.scrollTop = document.documentElement.scrollTop = 0;
});

////////////////////////////////////////////////////////////////////////////////

    $scope.getTotal = function() {
        // console.table($scope.orderData)
        var total = 0;
        console.log($scope.orderData.products.length);
        for (var i = 0; i < $scope.orderData.products.length; i++) {
            total += $scope.orderData.products[i].price * $scope.orderData.products[i].qty;
        }
        $scope.total = total;
        console.log($scope.total)
    };

    $scope.getOrder = function() {
        cartSVC.getOrder().then(function(response) {
            // console.table(response);
            $scope.orderData = response;
            console.log('order data', $scope.orderData);
            // $scope.getTotal();
        });
    };
    $scope.getOrder();

    $scope.deleteItem = function(id) {
        cartSVC.deleteItem(id).then(function(response) {
            console.log("response from cartCTRL: " , response);
            $scope.getOrder();
        });
    };


    // $scope.updateItem = function(id, qty) {
    //     // console.table(id, qty);
    //     orderService.updateItem(id, qty).then(function(response) {
    //         $scope.getTotal();
    //     });
    // };


    // $scope.submit = function() {
    //     console.log('Submiting order');
    //     orderService.completeOrder().then(function(response) {
    //         $scope.getOrder();
    //     });
    // };





});