'use strict';

angular.module('TAOS', ['ui.router']).config(function ($stateProvider, $urlRouterProvider) {

    $urlRouterProvider.otherwise('/');

    $stateProvider.state('home', {
        url: '/',
        templateUrl: 'views/home.html',
        controller: 'productCtrl'
    }).state('products', {
        url: '/products/:type',
        templateUrl: 'views/product-catalog.html',
        controller: 'productCtrl'

        // /:price/:aroma/:brush/:size

    }).state('razors', {
        url: '/razors',
        templateUrl: 'views/razors/razors.html',
        controller: 'razorsCtrl'
    }).state('brushes', {
        url: '/brushes',
        templateUrl: 'views/brushes/brushes.html',
        controller: 'brushesCtrl'
    }).state('details', {
        url: '/details/:id',
        templateUrl: 'views/product-details.html',
        controller: 'product-detailsCtrl'
    });
});
'use strict';

angular.module('TAOS').directive('footerDir', function () {

    return {
        restrict: "AE",
        templateUrl: "../views/footerDir.html"

    };
});
'use strict';

angular.module('TAOS').directive('headerDir', function () {

    return {
        restrict: "AE",
        templateUrl: "../views/headerDir.html"

    };
});
'use strict';

//doesnt have a SVC


angular.module('TAOS').controller('product-detailsCtrl', function (productSVC, $scope, $stateParams) {

    productSVC.getDetails($stateParams.id).then(function (response) {
        $scope.product = response.data[0];
        console.log('product', $scope.product);

        // if($stateParams.id)

    });
});
'use strict';

angular.module('TAOS').controller('productCtrl', function (productSVC, $scope, $state, $stateParams) {

    $scope.kits = false;
    $scope.razors = false;
    $scope.brushes = false;

    // console.log('params', $stateParams);

    $scope.getProducts = function () {
        productSVC.getProducts($stateParams.type).then(function (response) {
            console.log(response);
            $scope.products = response.data;
            $scope[$stateParams.type] = true;
        });
    };
    $scope.getProducts();

    $scope.addToCart = function (id, qty) {
        productSVC.addToCart(id, qty).then(function (response) {
            console.log('response ==>', response);
        });
    };
});
// angular.module('TAOS')
//     .controller('razorsCtrl', function(razorsSVC, productSVC, $scope){


//     });
"use strict";
'use strict';

angular.module('TAOS').controller('shavingCTRL', function (shavingSVC, productSVC, $scope, $stateParams) {

    //         $scope.kits = false;
    //         $scope.razors = false;
    //         $scope.brushes = false;

    // console.log('params', $stateParams);

    // $scope.getProducts = () => {
    //     productSVC.getProducts($stateParams.type).then(function (response){
    //         console.log(response);
    //         $scope.products = response.data;
    //         $scope[$stateParams.type] = true;
    //     });
    // };
    // $scope.getProducts();

    // cut and put into productsCTRL.js


});
'use strict';

angular.module('TAOS').service('productSVC', function ($http) {

    // -------------------------SERVICE FUNCTIONS------------------------------------------------------
    // I dont think this does anything
    // this.get_all_products = () => {
    //     return products;

    //     //this is where the http req's will go
    // };


    this.getProducts = function (type) {

        return $http({
            method: 'GET',
            url: '/api/products/' + type
        }).then(function (response) {
            return response;
        });
    };

    // ------------------------------------------------------------------------------------------------

    this.getDetails = function (id) {
        console.log('GetDetails', id);
        return $http({
            method: 'GET',
            url: '/api/product/' + id
        }).then(function (response) {
            return response;
        });
    };

    this.addToCart = function (id, qty) {
        console.log('id,qty', id, qty);
        return $http({
            method: 'POST',
            url: '/api/order/add',
            data: {
                product_id: id,
                qty: qty
            }
        });
    };
});
"use strict";
'use strict';

angular.module('TAOS').service('shavingSVC', function ($http) {

    //I dont understand how this works
    // this.getProducts = function(type){
    //     console.log(type);


    // return $http.get('/api/store/' + type)
    //     .then(function( response ) {
    //         return response;
    //     });
    // };
    // console.log(response);


});
//# sourceMappingURL=bundle.js.map
