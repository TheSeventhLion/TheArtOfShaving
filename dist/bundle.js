'use strict';

angular.module('TAOS', ['ui.router']).config(function ($stateProvider, $urlRouterProvider) {

    $urlRouterProvider.otherwise('/');

    $stateProvider.state('home', {
        url: '/',
        templateUrl: 'views/home.html'
        //controller: 'homeCtrl'
    }).state('shaving', {
        url: '/shaving',
        templateUrl: 'views/shaving/shaving.html',
        controller: 'shavingCtrl'
    });

    // })

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

angular.module('TAOS').service('mainService', function ($http) {});
//# sourceMappingURL=bundle.js.map
