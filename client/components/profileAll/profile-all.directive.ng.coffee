'use strict'

angular.module 'semlepRebuildApp'
.directive 'profileAll', ->
  restrict: 'EA'
  templateUrl: 'client/components/profileAll/profile-all.view.html'
  replace: true
  link: (scope, elem, attrs) ->
    scope.property = 'profileAll'
