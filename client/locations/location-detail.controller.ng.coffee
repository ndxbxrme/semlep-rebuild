'use strict'

angular.module 'semlepRebuildApp'
.controller 'LocationDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.location = $scope.$meteorObject Locations, $stateParams.locationId
  $scope.$meteorSubscribe('locations')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.location.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.location.reset()
