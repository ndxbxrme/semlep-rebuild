'use strict'

Meteor.methods
  getSpecialisms: () ->
    if Meteor.isServer
      HTTP.get 'http://advicefinder.co.uk/resources/faqs/all', (err, data) ->
        m = data.content.match /href="resources\/faqs\/[0-9]+">[^<]+/g
        for match in m
          bits = match.match /href="resources\/faqs\/([0-9]+)">([^<]+)/
          Specialisms.insert
            name: s.unescapeHTML(bits[2])
            afid: bits[1]