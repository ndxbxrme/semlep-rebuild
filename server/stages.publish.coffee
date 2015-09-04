'use strict'

Meteor.publish 'stages', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfStages', Stages.find(where), noReady: true
  Stages.find where, options