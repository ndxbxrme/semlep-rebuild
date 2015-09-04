'use strict'

angular.module 'semlepRebuildApp'
.directive 'settingsAdmin', ->
  restrict: 'EA'
  templateUrl: 'client/components/settingsAdmin/settings-admin.view.html'
  replace: true
  link: (scope, elem, attrs) ->
    scope.property = 'settingsAdmin'
