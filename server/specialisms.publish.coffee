'use strict'

Meteor.publish 'specialisms', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfSpecialisms', Specialisms.find(where), noReady: true
  Specialisms.find where, options