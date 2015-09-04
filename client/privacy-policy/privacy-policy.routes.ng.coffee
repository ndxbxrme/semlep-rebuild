'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'privacyPolicy',
    url: '/privacy-policy'
    templateUrl: 'client/privacy-policy/privacy-policy.view.html'
    controller: 'PrivacyPolicyCtrl'
