'use strict'

angular.module 'semlepRebuildApp'
.controller 'QueryDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.query = $scope.$meteorObject Queries, $stateParams.queryId
  $scope.$meteorSubscribe('queries')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.query.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.query.reset()
