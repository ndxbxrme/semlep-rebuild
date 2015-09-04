'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'profiles-list',
    url: '/profiles'
    templateUrl: 'client/profiles/profiles-list.view.html'
    controller: 'ProfilesListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.waitForUser()
      ]
  .state 'profile-detail',
    url: '/profiles/:profileSlug'
    templateUrl: 'client/profiles/profile-detail.view.html'
    controller: 'ProfileDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.waitForUser()
      ]
