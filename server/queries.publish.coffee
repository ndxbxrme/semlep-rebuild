'use strict'

Meteor.publish 'queries', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfQueries', Queries.find(where), noReady: true
  Queries.find where, options