'use strict';

angular.module('TAOS', ['ui.router']).config(function ($stateProvider, $urlRouterProvider) {

    var limitUser = function limitUser(authSVC, $state) {
        return authSVC.getCurrentUser().then(function (response) {
            if (!response.data) {
                $state.go('home');
            }
            return response.data;
        }).catch(function (err) {
            $state.go('home');
        });
    };
    var getUser = function getUser(authSVC) {
        return authSVC.getCurrentUser().then(function (response) {
            return response.data;
        });
    };

    $urlRouterProvider.otherwise('/');

    $stateProvider.state('home', {
        url: '/',
        templateUrl: 'views/home.html',
        controller: 'productCTRL'
    }).state('products', {
        url: '/products/:type',
        templateUrl: 'views/product-catalog.html',
        controller: 'productCTRL'

        // /:price/:aroma/:brush/:size

    }).state('razors', {
        url: '/razors',
        templateUrl: 'views/razors/razors.html',
        controller: 'razorsCTRL'
    }).state('brushes', {
        url: '/brushes',
        templateUrl: 'views/brushes/brushes.html',
        controller: 'brushesCTRL'
    }).state('details', {
        url: '/details/:id',
        templateUrl: 'views/product-details.html',
        controller: 'product-detailsCTRL'
    }).state('cart', {
        url: '/cart',
        templateUrl: 'views/cart/cart.html',
        controller: 'cartCTRL'
    }).state('login', {
        url: '/login',
        templateUrl: 'views/login.html'
        // controller: ''
    });
});
'use strict';

angular.module('TAOS').controller('cartCTRL', function (cartSVC, $scope, $stateParams) {

    $scope.getTotal = function () {
        // console.table($scope.orderData)
        var total = 0;
        console.log($scope.orderData.products.length);
        for (var i = 0; i < $scope.orderData.products.length; i++) {
            total += $scope.orderData.products[i].price * $scope.orderData.products[i].qty;
        }
        $scope.total = total;
        console.log($scope.total);
    };

    $scope.getOrder = function () {
        cartSVC.getOrder().then(function (response) {
            // console.table(response);
            $scope.orderData = response;
            console.log('order data', $scope.orderData);
            $scope.getTotal();
        });
    };
    $scope.getOrder();

    // $scope.updateItem = function(id, qty) {
    //     // console.table(id, qty);
    //     orderService.updateItem(id, qty).then(function(response) {
    //         $scope.getTotal();
    //     });
    // };

    $scope.deleteItem = function (id) {
        cartSVC.deleteItem(id).then(function (response) {
            console.log("response from cartCTRL: ", response);
            $scope.getOrder();
        });
    };

    // $scope.submit = function() {
    //     console.log('Submiting order');
    //     orderService.completeOrder().then(function(response) {
    //         $scope.getOrder();
    //     });
    // };

});
'use strict';

angular.module('TAOS').controller('product-detailsCTRL', function (productSVC, $state, $scope, $stateParams) {

    productSVC.getDetails($stateParams.id).then(function (response) {
        $scope.product = response.data[0];
        console.log('product', $scope.product);
    });

    $scope.addToCart = function (id) {
        productSVC.addToCart(id).then(function (response) {
            console.log('response ==>', response);
            $state.go('cart');
        });
    };
});
'use strict';

angular.module('TAOS').controller('productCTRL', function (productSVC, $scope, $state, $stateParams) {

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

angular.module('TAOS').service('authSVC', function ($http) {

  this.logout = function () {
    return $http({
      method: 'GET',
      url: '/api/logout'
    }).then(function (response) {
      $rootScope.$emit('user', null);
      return response;
    });
  };
  this.getCurrentUser = function () {
    return $http({
      method: 'GET',
      url: '/api/me'
    }).then(function (response) {
      $rootScope.$emit('user', response.data);
      return response;
    });
  };
  this.editUser = function (user) {
    return $http({
      method: 'PUT',
      url: '/api/user/current',
      data: user
    }).then(function (response) {
      return response;
    });
  };
});
'use strict';

angular.module('TAOS').service('cartSVC', function ($http) {

  this.deleteItem = function (id) {
    console.log("Just hit cartSVC");
    return $http({
      method: 'DELETE',
      url: '/api/order/delete/' + id
    });
  };

  this.getOrder = function () {
    return $http({
      method: 'GET',
      url: '/api/order'
    }).then(function (response) {
      console.log('Get Order: ', response);
      return response.data;
    });
  };
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

    this.addToCart = function (id) {
        console.log('id', id);
        // console.log('qty', qty);
        return $http({
            method: 'POST',
            url: '/api/order/add',
            data: {
                product_id: id
            }
        }).then(function (response) {
            return response;
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
