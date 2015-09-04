'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'searchResults',
    url: '/search-results'
    templateUrl: 'client/search-results/search-results.view.html'
    controller: 'SearchResultsCtrl'
