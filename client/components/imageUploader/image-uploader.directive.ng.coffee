'use strict'

angular.module 'semlepRebuildApp'
.directive 'imageUploader', ->
  restrict: 'EA'
  templateUrl: 'client/components/imageUploader/image-uploader.view.html'
  replace: true
  link: (scope, elem, attrs) ->
    scope.property = 'imageUploader'
