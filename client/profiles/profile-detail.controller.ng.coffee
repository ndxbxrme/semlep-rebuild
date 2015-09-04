'use strict'

angular.module 'semlepRebuildApp'
.controller 'ProfileDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.profileSlug = $stateParams.profileSlug or 'new'
  $scope.$meteorSubscribe 'profiles'
  .then ->
    $scope.profile = if $scope.profileSlug isnt 'new' then $scope.$meteorObject Profiles, slug:$stateParams.profileSlug, false else {}
  
  $scope.isOwner = ->
    console.log $scope.profile?.adviserId is Meteor.userId() or $scope.profileSlug is 'new'
    $scope.profile?.adviserId is Meteor.userId() or $scope.profileSlug is 'new'
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.profile.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.profile.reset()
