angular.module('TAOS', ['ui.router'])
    .config(function($stateProvider, $urlRouterProvider){


    $urlRouterProvider.otherwise('/');

        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'views/home.html'
                //controller: 'homeCtrl'
            })
            
            .state('shaving', {
                url: '/shaving',
                templateUrl: 'views/shaving/shaving.html',
                controller: 'shavingCtrl'
            });
            


            // })



    })
