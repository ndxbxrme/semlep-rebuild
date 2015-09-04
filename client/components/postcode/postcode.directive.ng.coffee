'use strict'

angular.module 'semlepRebuildApp'
.directive 'postcode', ->
  restrict: 'EA'
  link: (scope, elem, attrs) ->
    scope.property = 'postcode'
