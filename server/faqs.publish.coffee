'use strict'

Meteor.publish 'faqs', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfFaqs', Faqs.find(where), noReady: true
  Faqs.find where, options