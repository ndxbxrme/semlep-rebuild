'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'cookiePolicy',
    url: '/cookie-policy'
    templateUrl: 'client/cookie-policy/cookie-policy.view.html'
    controller: 'CookiePolicyCtrl'
