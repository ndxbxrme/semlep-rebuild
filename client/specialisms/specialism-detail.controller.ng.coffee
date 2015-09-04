'use strict'

angular.module 'semlepRebuildApp'
.controller 'SpecialismDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.specialism = $scope.$meteorObject Specialisms, $stateParams.specialismId
  $scope.$meteorSubscribe('specialisms')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.specialism.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.specialism.reset()
