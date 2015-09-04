'use strict'

angular.module 'semlepRebuildApp'
.controller 'FaqDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.faq = $scope.$meteorObject Faqs, $stateParams.faqId
  $scope.$meteorSubscribe('faqs')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.faq.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.faq.reset()
