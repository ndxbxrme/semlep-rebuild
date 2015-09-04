'use strict'

angular.module 'semlepRebuildApp'
.controller 'ContactDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.contact = $scope.$meteorObject Contacts, $stateParams.contactId
  $scope.$meteorSubscribe('contacts')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.contact.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.contact.reset()
