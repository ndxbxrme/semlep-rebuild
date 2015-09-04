'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'about',
    url: '/about'
    templateUrl: 'client/about/about.view.html'
    controller: 'AboutCtrl'
