'use strict'

angular.module 'semlepRebuildApp'
.controller 'ProfileDetailCtrl', ($scope, $stateParams, $meteor, $state) ->

  $scope.locations = $scope.$meteorCollection Locations
  $scope.$meteorSubscribe 'locations'
  $scope.specialisms = $scope.$meteorCollection Specialisms
  $scope.$meteorSubscribe 'specialisms'
  $scope.sectors = $scope.$meteorCollection Sectors
  $scope.$meteorSubscribe 'sectors'
  $scope.stages = $scope.$meteorCollection Stages
  $scope.$meteorSubscribe 'stages'
  $scope.sizes = $scope.$meteorCollection Sizes
  $scope.$meteorSubscribe 'sizes'

  $scope.profileSlug = $stateParams.profileSlug or 'new'
  $scope.$meteorSubscribe 'profiles'
  .then ->
    if $scope.profileSlug is 'new'
      $scope.profile = $scope.$meteorObject Profiles, adviserId:Meteor.userId(), false
      if not $scope.profile.createdAt
        $scope.profile = {}
    else
      $scope.profile = $scope.$meteorObject Profiles, slug:$stateParams.profileSlug, false
  
  $scope.isOwner = ->
    $scope.profile?.adviserId is Meteor.userId() or $scope.profileSlug is 'new'
  
  $scope.save = () ->
    $scope.submitted = true
    if $scope.form.$valid
      if not $scope.profile.createdAt
        Profiles.insert $scope.profile
        toastr.success 'Profile created', 'Profile'
      else
        $scope.profile.save()
        toastr.success 'Profile updated', 'Profile'
      $state.go 'dashboard'
        
  $scope.reset = () ->
    $scope.profile.reset()
