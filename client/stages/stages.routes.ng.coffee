'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'stages-list',
    url: '/stages'
    templateUrl: 'client/stages/stages-list.view.html'
    controller: 'StagesListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'stage-detail',
    url: '/stages/:stageId'
    templateUrl: 'client/stages/stage-detail.view.html'
    controller: 'StageDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
