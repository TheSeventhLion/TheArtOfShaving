angular.module('TAOS', ['ui.router'])
    .config(function($stateProvider, $urlRouterProvider){


    $urlRouterProvider.otherwise('/');

        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'views/home.html',
                controller: 'homeCtrl'
            })
            
            .state('products', {
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
