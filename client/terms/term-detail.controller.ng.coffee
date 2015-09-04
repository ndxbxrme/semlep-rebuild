'use strict'

angular.module 'semlepRebuildApp'
.controller 'TermDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.term = $scope.$meteorObject Terms, $stateParams.termId
  $scope.$meteorSubscribe('terms')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.term.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.term.reset()
