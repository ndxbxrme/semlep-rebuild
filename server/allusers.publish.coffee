'use strict'

Meteor.publish 'allusers', (options, searchString) ->
  where = {}
  Counts.publish this, 'numberOfAllUsers', Meteor.users.find(where), noReady: true
  Meteor.users.find where, options