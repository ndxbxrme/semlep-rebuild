'use strict'

Meteor.publish 'businessStats', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfBusinessStats', BusinessStats.find(where), noReady: true
  BusinessStats.find where, options