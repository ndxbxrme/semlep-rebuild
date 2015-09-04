'use strict'

angular.module 'semlepRebuildApp'
.controller 'ProfileDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.profile = $scope.$meteorObject Profiles, $stateParams.profileId
  $scope.$meteorSubscribe('profiles')
  
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
