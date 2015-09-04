'use strict'

angular.module 'semlepRebuildApp'
.controller 'DashboardCtrl', ($scope, $location) ->
  $scope.$meteorSubscribe 'profiles'
  .then ->
    $scope.profile = Profiles.findOne
      adviserId: Meteor.userId()
    if not $scope.profile and not $scope.login.isAdmin()
      $location.path = 'profiles/new'
