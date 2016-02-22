//==============================================================================
//= Init Angular Application.
//==============================================================================  
/**
 * Directives for listening the end of the ngRepeat for states.
 */
var app = angular.module('myApp', ["ngRoute", "ngSanitize", "angularResizable", "ngMaterial", 'uiGmapgoogle-maps'])
   .config(['$routeProvider',
        function($routeProvider) {
          
        }])
        .run(["$rootScope", function ($rootScope) {
          $rootScope.application = {};
        }]);

app.filter('unsafe', function($sce) { return $sce.trustAsHtml; });

