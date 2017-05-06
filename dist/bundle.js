'use strict';

angular.module('TAOS').controller('homeCtrl', function (homeSVC, $scope) {});
'use strict';

angular.module('TAOS').controller('shavingCtrl', function (shavingSVC, productSVC, $scope) {

    $scope.products = productSVC.get_all_products();
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
//# sourceMappingURL=bundle.js.map
