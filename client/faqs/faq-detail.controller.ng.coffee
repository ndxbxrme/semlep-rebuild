'use strict'

angular.module 'semlepRebuildApp'
.controller 'FaqDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.faq = $scope.$meteorObject Faqs, {slug: $stateParams.faqSlug}, false
  $scope.$meteorSubscribe 'faqs' 
  .then -> 
    $scope.profiles = $scope.$meteorCollection Profiles
    $scope.$meteorSubscribe 'profiles', {}, null, faqId:$scope.faq._id
  $scope.specialisms = $scope.$meteorCollection Specialisms
  $scope.$meteorSubscribe 'specialisms'
  $scope.specialismSlug = $stateParams.specialismSlug
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.faq.save()
      toastr.success 'Question updated', 'FAQ'
        
  $scope.reset = () ->
    $scope.faq.reset()