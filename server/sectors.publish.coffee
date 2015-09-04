'use strict'

Meteor.publish 'sectors', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfSectors', Sectors.find(where), noReady: true
  Sectors.find where, options