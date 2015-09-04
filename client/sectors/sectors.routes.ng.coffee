'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'sectors-list',
    url: '/sectors'
    templateUrl: 'client/sectors/sectors-list.view.html'
    controller: 'SectorsListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'sector-detail',
    url: '/sectors/:sectorId'
    templateUrl: 'client/sectors/sector-detail.view.html'
    controller: 'SectorDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
