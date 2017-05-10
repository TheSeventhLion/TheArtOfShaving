'use strict';

angular.module('TAOS', ['ui.router']).config(function ($stateProvider, $urlRouterProvider) {

    $urlRouterProvider.otherwise('/');

    $stateProvider.state('home', {
        url: '/',
        templateUrl: 'views/home.html',
        controller: 'homeCtrl'
    }).state('shaving', {
        url: '/shaving',
        templateUrl: 'views/shaving/shaving-kits.html',
        controller: 'shavingCtrl'
    });
});
"use strict";
'use strict';

angular.module('TAOS').controller('homeCtrl', function (homeSVC, $scope) {});
'use strict';

angular.module('TAOS').controller('productCtrl', function (productSVC, $scope) {});
"use strict";
'use strict';

angular.module('TAOS').controller('shavingCtrl', function (shavingSVC, productSVC, $scope) {

    $scope.get_all_products = function () {
        productSVC.get_all_products().then(function (response) {
            console.log(response);
        });
    };

    $scope.getProducts = function () {
        productSVC.getProducts().then(function (response) {
            console.log(response);
            $scope.products = response.data;
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

    this.getProducts = function () {
        return $http({
            method: 'GET',
            url: '/api/products'
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
