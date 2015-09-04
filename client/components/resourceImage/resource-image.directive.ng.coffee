'use strict'

angular.module 'semlepRebuildApp'
.directive 'resourceImage', ->
  restrict: 'EA'
  templateUrl: 'client/components/resourceImage/resource-image.view.html'
  replace: true
  link: (scope, elem, attrs) ->
    scope.property = 'resourceImage'
