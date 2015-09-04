'use strict'

angular.module 'semlepRebuildApp'

.config ($urlRouterProvider, $locationProvider) ->
  $locationProvider.html5Mode true
  $urlRouterProvider.otherwise '/'

.run ($rootScope, $state, login) ->
  $rootScope.login = login
  $rootScope.$on '$stateChangeError', (event, toState, toParams, fromState, fromParams, error) ->
    switch error
      when 'AUTH_REQUIRED', 'FORBIDDEN', 'UNAUTHORIZED'
        $state.go 'main'
