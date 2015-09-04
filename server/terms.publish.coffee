'use strict'

Meteor.publish 'terms', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfTerms', Terms.find(where), noReady: true
  Terms.find where, options