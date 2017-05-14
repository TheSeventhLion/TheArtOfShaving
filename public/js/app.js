angular.module('TAOS', ['ui.router'])
    .config(function($stateProvider, $urlRouterProvider){


    $urlRouterProvider.otherwise('/');

        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'views/home.html',
                controller: 'productCtrl'
            })
            
            .state('products', {
                url: '/products/:type',
                templateUrl: 'views/product-catalog.html',
                controller: 'productCtrl'

// /:price/:aroma/:brush/:size

            })

            .state('razors', {
                url: '/razors',
                templateUrl: 'views/razors/razors.html',
                controller: 'razorsCtrl'
            })

            .state('brushes', {
                url: '/brushes',
                templateUrl: 'views/brushes/brushes.html',
                controller: 'brushesCtrl'
        })

            .state('details', {
                url: '/details/:id',
                templateUrl: 'views/product-details.html',
                controller: 'product-detailsCtrl'
        });





            










    });
