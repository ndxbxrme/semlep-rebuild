'use strict'

Meteor.publish 'profiles', (options, searchString, query) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  if query
    if query.faqId then where.faqIds = query.faqId
    if query.specialisms then where.specialisms =
      '$in': query.specialisms
    if query.stages then where.stages =
      '$in': query.stages
    if query.sectors then where.sectors =
      '$in': query.sectors
    if query.sizes then where.sizes =
      '$in': query.sizes
  Counts.publish this, 'numberOfProfiles', Profiles.find(where), noReady: true
  Profiles.find where, options