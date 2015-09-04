'use strict'

Meteor.publish 'cms', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfCms', Cms.find(where), noReady: true
  Cms.find where, options