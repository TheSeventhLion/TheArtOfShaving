'use strict';

angular.module('TAOS', ['ui.router']).config(function ($stateProvider, $urlRouterProvider) {

    $urlRouterProvider.otherwise('/');

    $stateProvider.state('home', {
        url: '/',
        templateUrl: 'views/home.html',
        controller: 'homeCtrl'
    }).state('products', {
        url: '/products/:type',
        templateUrl: 'views/shaving/shaving-kits.html',
        controller: 'shavingCtrl'

        // /:price/:aroma/:brush/:size

        // })


        // .state('razors', {
        //     url: '/razors',
        //     templateUrl: 'views/razors/razors.html',
        //     controller: 'razorsCtrl'
        // })          

        // .state('brushes', {
        //     url: '/brushes',
        //     templateUrl: 'views/brushes/brushes.html',
        //     controller: 'razorsCtrl'
    });
});
"use strict";
'use strict';

angular.module('TAOS').controller('homeCtrl', function (homeSVC, $scope) {});
'use strict';

angular.module('TAOS').controller('productCtrl', function (productSVC, $scope) {});
'use strict';

angular.module('TAOS').controller('razorsCtrl', function (razorsSVC, productSVC, $scope) {

    $scope.getProducts = function () {
        productSVC.getRazors().then(function (response) {
            console.log(response);
            $scope.products = response.data;
        });
    };
    $scope.getProducts();
});
'use strict';

angular.module('TAOS').controller('shavingCtrl', function (shavingSVC, productSVC, $scope, $stateParams) {

    $scope.kits = false;
    $scope.razors = false;
    $scope.brushes = false;

    console.log('params', $stateParams);

    $scope.getProducts = function () {
        productSVC.getProducts($stateParams.type).then(function (response) {
            console.log(response);
            $scope.products = response.data;
            $scope[$stateParams.type] = true;
        });
    };
    $scope.getProducts();
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
"use strict";
'use strict';

angular.module('TAOS').service('homeSVC', function ($http) {});
'use strict';

//Anything involving in product data 

angular.module('TAOS').service('productSVC', function ($http) {

    // -------------------------SERVICE FUNCTIONS------------------------------------------------------

    this.get_all_products = function () {
        return products;

        //this is where the http req's will go
    };

    this.getProducts = function (type) {

        return $http({
            method: 'GET',
            url: '/api/products/' + type
        }).then(function (response) {
            return response;
        });
    };

    // -------------------------SERVICE FUNCTIONS---------------------------------------------------60

});
"use strict";
'use strict';

angular.module('TAOS').service('shavingSVC', function ($http) {

    //I dont understand how this works
    this.getProducts = function (type) {
        console.log(type);

        // return $http.get('/api/store/' + type)
        //     .then(function( response ) {
        //         return response;
        //     });
    };
    // console.log(response);

});
//# sourceMappingURL=bundle.js.map
