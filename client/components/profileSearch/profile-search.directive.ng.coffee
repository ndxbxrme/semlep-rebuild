'use strict'

angular.module 'semlepRebuildApp'
.directive 'profileSearch', ->
  restrict: 'EA'
  templateUrl: 'client/components/profileSearch/profile-search.view.html'
  replace: true
  link: (scope, elem, attrs) ->
    scope.property = 'profileSearch'
