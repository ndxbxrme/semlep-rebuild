'use strict'

Meteor.publish 'profiles', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfProfiles', Profiles.find(where), noReady: true
  Profiles.find where, options