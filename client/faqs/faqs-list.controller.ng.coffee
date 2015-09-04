'use strict'

angular.module 'semlepRebuildApp'
.controller 'FaqsListCtrl', ($scope, $meteor, $stateParams) ->
  $scope.page = 1
  $scope.perPage = 30
  $scope.sort = name_sort : 1
  $scope.orderProperty = '1'
  
  $scope.profile = $scope.$meteorObject Profiles, {adviserId:Meteor.userId()}, false
  $scope.$meteorSubscribe 'profiles'
  $scope.specialisms = $scope.$meteorCollection Specialisms
  $scope.$meteorSubscribe 'specialisms'
  .then ->
    $scope.specialism = Specialisms.findOne
      slug: $stateParams.specialismSlug
    $scope.specialismId = $scope.specialism?._id
    $scope.faqs = $scope.$meteorCollection () ->
      Faqs.find {}, {sort:$scope.getReactively('sort')}
    $meteor.autorun $scope, () ->
      $scope.$meteorSubscribe 'faqs', 
        limit: parseInt($scope.getReactively('perPage'))
        skip: parseInt(($scope.getReactively('page') - 1) * $scope.getReactively('perPage'))
        sort: $scope.getReactively('sort')
      , $scope.getReactively('search')
      , $scope.getReactively('specialismId')
      .then () ->
        $scope.faqsCount = $scope.$meteorObject Counts, 'numberOfFaqs', false

  $meteor.session 'faqsCounter'
  .bind $scope, 'page'
  
  if not $stateParams.specialismSlug
    $scope.page = 1
    
  $scope.toggleFaq = (faq) ->
    if not $scope.profile.faqIds
      $scope.profile.faqIds = []
    if $scope.profile.faqIds.indexOf(faq._id) is -1
      $scope.profile.faqIds.push faq._id
    else
      $scope.profile.faqIds.splice $scope.profile.faqIds.indexOf(faq._id), 1
    $scope.profile.save()
    
  $scope.subscribedToFaq = (faq) ->
    if not $scope.profile.faqIds
      $scope.profile.faqIds = []
    $scope.profile.faqIds?.indexOf(faq._id) isnt -1
    
  $scope.save = () ->
    if $scope.form.$valid
      $scope.faqs.save $scope.newFaq
      $scope.newFaq = undefined
      toastr.success 'Question added', 'FAQ'
      
  $scope.remove = (faq) ->
    $scope.faqs.remove faq
    toastr.success 'Question deleted', 'FAQ'
    
  $scope.pageChanged = (newPage) ->
    $scope.page = newPage
    
  $scope.$watch 'orderProperty', () ->
    if $scope.orderProperty
      $scope.sort = name_sort: parseInt($scope.orderProperty)
