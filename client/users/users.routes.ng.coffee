'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'users-list',
    url: '/users'
    templateUrl: 'client/users/users-list.view.html'
    controller: 'UsersListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'user-detail',
    url: '/users/:userId'
    templateUrl: 'client/users/user-detail.view.html'
    controller: 'UserDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
