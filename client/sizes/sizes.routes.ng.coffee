'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'sizes-list',
    url: '/sizes'
    templateUrl: 'client/sizes/sizes-list.view.html'
    controller: 'SizesListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'size-detail',
    url: '/sizes/:sizeId'
    templateUrl: 'client/sizes/size-detail.view.html'
    controller: 'SizeDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
