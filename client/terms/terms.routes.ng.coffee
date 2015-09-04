'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'terms-list',
    url: '/terms'
    templateUrl: 'client/terms/terms-list.view.html'
    controller: 'TermsListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'term-detail',
    url: '/terms/:termId'
    templateUrl: 'client/terms/term-detail.view.html'
    controller: 'TermDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
