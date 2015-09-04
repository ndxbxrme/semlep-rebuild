'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'search',
    url: '/search'
    templateUrl: 'client/search/search.view.html'
    controller: 'SearchCtrl'
