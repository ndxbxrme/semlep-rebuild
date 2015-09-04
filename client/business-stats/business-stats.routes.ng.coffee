'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'businessStats-list',
    url: '/business-stats'
    templateUrl: 'client/business-stats/business-stats-list.view.html'
    controller: 'BusinessStatsListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'businessStat-detail',
    url: '/business-stats/:businessStatId'
    templateUrl: 'client/business-stats/business-stat-detail.view.html'
    controller: 'BusinessStatDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
