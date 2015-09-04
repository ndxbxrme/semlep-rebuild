'use strict'

angular.module 'semlepRebuildApp'
.controller 'UserDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.user = $scope.$meteorObject Users, $stateParams.userId
  $scope.$meteorSubscribe('users')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.user.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.user.reset()
