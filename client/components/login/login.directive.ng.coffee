'use strict'

angular.module 'semlepRebuildApp'
.directive 'login', ->
  restrict: 'EA'
  templateUrl: 'client/components/login/login.view.html'
  replace: true
  link: (scope, elem, attrs) ->
    scope.property = 'login'
