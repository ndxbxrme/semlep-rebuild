'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'messages-list',
    url: '/messages'
    templateUrl: 'client/messages/messages-list.view.html'
    controller: 'MessagesListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'message-detail',
    url: '/messages/:messageId'
    templateUrl: 'client/messages/message-detail.view.html'
    controller: 'MessageDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
