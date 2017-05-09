angular.module('TAOS', ['ui.router', 'angular-stripe'])
    .config(function($stateProvider, $urlRouterProvider, stripeProvider){


    $urlRouterProvider.otherwise('/');

        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'views/home.html',
                controller: 'homeCtrl'
            })
            
            .state('shaving', {
                url: '/shaving',
                templateUrl: 'views/shaving/shaving-kits.html',
                controller: 'shavingCtrl'
            });






            










    });
