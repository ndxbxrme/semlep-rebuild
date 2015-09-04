'use strict'

angular.module 'semlepRebuildApp'
.directive 'profileAdmin', ->
  restrict: 'EA'
  templateUrl: 'client/components/profileAdmin/profile-admin.view.html'
  replace: true
  link: (scope, elem, attrs) ->
    scope.property = 'profileAdmin'
