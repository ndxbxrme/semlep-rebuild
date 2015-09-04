'use strict'

angular.module 'semlepRebuildApp'
.controller 'SizeDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.size = $scope.$meteorObject Sizes, $stateParams.sizeId
  $scope.$meteorSubscribe('sizes')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.size.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.size.reset()
