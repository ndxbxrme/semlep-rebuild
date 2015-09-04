'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'cms-list',
    url: '/cms'
    templateUrl: 'client/cms/cms-list.view.html'
    controller: 'CmsListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'cm-detail',
    url: '/cms/:cmId'
    templateUrl: 'client/cms/cm-detail.view.html'
    controller: 'CmDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
