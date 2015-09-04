'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'queries-list',
    url: '/queries'
    templateUrl: 'client/queries/queries-list.view.html'
    controller: 'QueriesListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'query-detail',
    url: '/queries/:queryId'
    templateUrl: 'client/queries/query-detail.view.html'
    controller: 'QueryDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
