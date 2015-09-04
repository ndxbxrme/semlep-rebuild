'use strict'

angular.module 'semlepRebuildApp'
.controller 'BusinessStatDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.businessStat = $scope.$meteorObject BusinessStats, $stateParams.businessStatId
  $scope.$meteorSubscribe('businessStats')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.businessStat.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.businessStat.reset()
