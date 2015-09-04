'use strict'

Meteor.publish 'locations', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfLocations', Locations.find(where), noReady: true
  Locations.find where, options