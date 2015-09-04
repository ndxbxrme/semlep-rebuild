'use strict'

Meteor.publish 'users', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfUsers', Users.find(where), noReady: true
  Users.find where, options