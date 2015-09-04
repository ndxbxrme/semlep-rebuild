'use strict'

angular.module 'semlepRebuildApp'
.directive 'dashboardAdmin', ->
  restrict: 'EA'
  templateUrl: 'client/components/dashboardAdmin/dashboard-admin.view.html'
  replace: true
  link: (scope, elem, attrs) ->
    scope.property = 'dashboardAdmin'
