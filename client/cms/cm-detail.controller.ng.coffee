'use strict'

angular.module 'semlepRebuildApp'
.controller 'CmDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.cm = $scope.$meteorObject Cms, $stateParams.cmId
  $scope.$meteorSubscribe('cms')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.cm.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.cm.reset()
