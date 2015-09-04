'use strict'

angular.module 'semlepRebuildApp'
.directive 'profileAdviser', ->
  restrict: 'EA'
  templateUrl: 'client/components/profileAdviser/profile-adviser.view.html'
  replace: true
  link: (scope, elem, attrs) ->
    scope.property = 'profileAdviser'
