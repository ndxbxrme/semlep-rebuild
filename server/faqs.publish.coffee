'use strict'

Meteor.publish 'faqs', (options, searchString, specialismId) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  if specialismId
    where.specialismIds = specialismId
  console.log specialismId
  Counts.publish this, 'numberOfFaqs', Faqs.find(where), noReady: true
  Faqs.find where, options