angular.module('TAOS', ['ui.router'])
    .config(function($stateProvider, $urlRouterProvider){


  var limitUser = function(authSVC, $state) {
    return authSVC.getCurrentUser()
    .then(function(response) {
      if (!response.data) {
        $state.go('home');
      }
      return response.data;
    })
    .catch(function(err) {
      $state.go('home');
    });
  }
  var getUser = function(authSVC) {
    return authSVC.getCurrentUser()
    .then(function(response) {
      return response.data;
    })
  }






    $urlRouterProvider.otherwise('/');

        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'views/home.html',
                controller: 'productCTRL'
            })
            
            .state('products', {
                url: '/products/:type',
                templateUrl: 'views/product-catalog.html',
                controller: 'productCTRL'

// /:price/:aroma/:brush/:size

            })

            .state('razors', {
                url: '/razors',
                templateUrl: 'views/razors/razors.html',
                controller: 'razorsCTRL'
            })

            .state('brushes', {
                url: '/brushes',
                templateUrl: 'views/brushes/brushes.html',
                controller: 'brushesCTRL'
        })

            .state('details', {
                url: '/details/:id',
                templateUrl: 'views/product-details.html',
                controller: 'product-detailsCTRL'
        })

        .state('cart', {
            url: '/cart',
            templateUrl: 'views/cart/cart.html',
            controller: 'cartCTRL'
        })

        .state('login', {
            url: '/login',
            templateUrl: 'views/login.html'
            // controller: ''
        })





            










    });
