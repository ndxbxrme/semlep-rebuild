'use strict'

angular.module 'semlepRebuildApp'
.directive 'imageUploader', (Upload) ->
  restrict: 'EA'
  templateUrl: 'client/components/imageUploader/image-uploader.view.html'
  replace: true
  require: 'ngModel'
  scope: {}
  link: (scope, elem, attrs, ngModel) ->
    ngModel.$formatters.unshift (v) ->
      scope.image = v
      return
    elem[0].addEventListener 'dragover', (e) ->
      e = e or event
      e.preventDefault()
      e.dataTransfer.dropEffect = 'copy'
    , false
    elem[0].addEventListener 'drop', (e) ->
      e = e or event
      e.preventDefault()
    , false
    scope.upload = ($files) ->
      if not scope.uploading and $files and $files.length
        scope.uploading = true
        Upload.upload
          url: 'https://api.cloudinary.com/v1_1/parks-brainstorm/upload'
          fields: upload_preset: 'dz2tvgod'
          file: $files[0]
        .progress (e) ->
          scope.progress = Math.floor(e.loaded * 100.0 / e.total)
          scope.status = 'Uploading... ' + scope.progress + '%'
          return
        .success (data) ->
          ngModel.$setViewValue data
          scope.image = data
          scope.uploading = false
          return
      return
