'use strict'

Meteor.publish 'contacts', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfContacts', Contacts.find(where), noReady: true
  Contacts.find where, options