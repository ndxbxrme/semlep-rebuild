'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'faqs-list',
    url: '/faqs'
    templateUrl: 'client/faqs/faqs-list.view.html'
    controller: 'FaqsListCtrl'
  .state 'faq-detail',
    url: '/faqs/:faqId'
    templateUrl: 'client/faqs/faq-detail.view.html'
    controller: 'FaqDetailCtrl'
