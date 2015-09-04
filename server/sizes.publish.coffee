'use strict'

Meteor.publish 'sizes', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfSizes', Sizes.find(where), noReady: true
  Sizes.find where, options