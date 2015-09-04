'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'specialisms-list',
    url: '/specialisms'
    templateUrl: 'client/specialisms/specialisms-list.view.html'
    controller: 'SpecialismsListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'specialism-detail',
    url: '/specialisms/:specialismId'
    templateUrl: 'client/specialisms/specialism-detail.view.html'
    controller: 'SpecialismDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
