'use strict'

angular.module 'semlepRebuildApp'
.controller 'StageDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.stage = $scope.$meteorObject Stages, $stateParams.stageId
  $scope.$meteorSubscribe('stages')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.stage.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.stage.reset()
