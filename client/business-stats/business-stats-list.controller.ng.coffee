'use strict'

angular.module 'semlepRebuildApp'
.controller 'BusinessStatsListCtrl', ($scope, $meteor) ->
  $scope.page = 1
  $scope.perPage = 3
  $scope.sort = name_sort : 1
  $scope.orderProperty = '1'
  
  $scope.businessStats = $scope.$meteorCollection () ->
    BusinessStats.find {}, {sort:$scope.getReactively('sort')}
  $meteor.autorun $scope, () ->
    $scope.$meteorSubscribe('businessStats', {
      limit: parseInt($scope.getReactively('perPage'))
      skip: parseInt(($scope.getReactively('page') - 1) * $scope.getReactively('perPage'))
      sort: $scope.getReactively('sort')
    }, $scope.getReactively('search')).then () ->
      $scope.businessStatsCount = $scope.$meteorObject Counts, 'numberOfBusinessStats', false

  $meteor.session 'businessStatsCounter'
  .bind $scope, 'page'
    
  $scope.save = () ->
    if $scope.form.$valid
      $scope.businessStats.save $scope.newBusinessStat
      $scope.newBusinessStat = undefined
      
  $scope.remove = (businessStat) ->
    $scope.businessStats.remove businessStat
    
  $scope.pageChanged = (newPage) ->
    $scope.page = newPage
    
  $scope.$watch 'orderProperty', () ->
    if $scope.orderProperty
      $scope.sort = name_sort: parseInt($scope.orderProperty)
