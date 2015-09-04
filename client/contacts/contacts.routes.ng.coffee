'use strict'

angular.module 'semlepRebuildApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'contacts-list',
    url: '/contacts'
    templateUrl: 'client/contacts/contacts-list.view.html'
    controller: 'ContactsListCtrl'
  .state 'contact-detail',
    url: '/contacts/:contactId'
    templateUrl: 'client/contacts/contact-detail.view.html'
    controller: 'ContactDetailCtrl'
