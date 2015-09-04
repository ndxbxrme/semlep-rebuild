'use strict'

angular.module 'semlepRebuildApp'
.directive 'dashboardAdviser', ->
  restrict: 'EA'
  templateUrl: 'client/components/dashboardAdviser/dashboard-adviser.view.html'
  replace: true
  scope: {}
  link: (scope, elem, attrs) ->
    scope.property = 'dashboardAdviser'
