'use strict'

angular.module 'semlepRebuildApp'
.directive 'resourceImage', ->
  restrict: 'EA'
  templateUrl: 'client/components/resourceImage/resource-image.view.html'
  replace: true
  scope:
    image: '=resourceImage'
    text: '@'
    size: '@'
  link: (scope, elem, attrs) ->
    scope.width = scope.height = 150
    if scope.size
      scope.width = scope.size.split('x')[0]
      scope.height = scope.size.split('x')[1]