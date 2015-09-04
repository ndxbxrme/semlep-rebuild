angular.module 'semlepRebuildApp', [
  'angular-meteor'
  'ui.router'
  'angularUtils.directives.dirPagination'
  'ngAnimate'
  'multi-check'
  'ngFileUpload'
  'angular-medium-editor'
]

onReady = () ->
  angular.bootstrap document, ['semlepRebuildApp']
  
if Meteor.isCordova
  angular.element(document).on 'deviceready', onReady
else
  angular.element(document).ready onReady