'use strict'

angular.module 'semlepRebuildApp'
.directive 'settingsAdviser', ->
  restrict: 'EA'
  templateUrl: 'client/components/settingsAdviser/settings-adviser.view.html'
  replace: true
  link: (scope, elem, attrs) ->
    scope.property = 'settingsAdviser'
