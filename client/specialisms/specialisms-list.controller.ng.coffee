'use strict'

angular.module 'semlepRebuildApp'
.controller 'SpecialismsListCtrl', ($scope, $meteor) ->
  $scope.page = 1
  $scope.perPage = 3
  $scope.sort = name_sort : 1
  $scope.orderProperty = '1'
  
  $scope.specialisms = $scope.$meteorCollection () ->
    Specialisms.find {}, {sort:$scope.getReactively('sort')}
  $meteor.autorun $scope, () ->
    $scope.$meteorSubscribe('specialisms', {
      limit: parseInt($scope.getReactively('perPage'))
      skip: parseInt(($scope.getReactively('page') - 1) * $scope.getReactively('perPage'))
      sort: $scope.getReactively('sort')
    }, $scope.getReactively('search')).then () ->
      $scope.specialismsCount = $scope.$meteorObject Counts, 'numberOfSpecialisms', false

  $meteor.session 'specialismsCounter'
  .bind $scope, 'page'
    
  $scope.save = () ->
    if $scope.form.$valid
      $scope.specialisms.save $scope.newSpecialism
      $scope.newSpecialism = undefined
      
  $scope.remove = (specialism) ->
    $scope.specialisms.remove specialism
    
  $scope.pageChanged = (newPage) ->
    $scope.page = newPage
    
  $scope.$watch 'orderProperty', () ->
    if $scope.orderProperty
      $scope.sort = name_sort: parseInt($scope.orderProperty)
