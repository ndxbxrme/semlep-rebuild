'use strict'

angular.module 'semlepRebuildApp'
.directive 'settingsAdmin', ->
  restrict: 'EA'
  templateUrl: 'client/components/settingsAdmin/settings-admin.view.html'
  replace: true
  scope: {}
  link: (scope, elem, attrs) ->
    scope.getSpecialisms = ->
      Meteor.call 'getSpecialisms'
    scope.getQuestions = ->
      Meteor.call 'getQuestions'
