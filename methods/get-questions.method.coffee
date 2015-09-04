'use strict'

Meteor.methods
  getQuestions: () ->
    if Meteor.isServer
      specialisms = Specialisms.find().fetch()
      fetchSpecialism = (count) ->
        specialism = specialisms[count]
        console.log 'fetching', specialism.name
        HTTP.get 'http://advicefinder.co.uk/resources/faqs/' + specialism.afid, (err, data) ->
          m = data.content.match /href="\/search\/specialism\/[0-9]+\/[0-9]+"[^>]+>[^<]+/g
          for match in m
            bits = match.match />([^<]+)/
            name = s.trim(s.unescapeHTML(bits[1]))
            faq = Faqs.findOne
              name: name
            if not faq
              Faqs.insert
                name: s.trim(s.unescapeHTML(bits[1]))
                specialismIds: [specialism._id]
            else
              Faqs.update
                _id: faq._id
              ,
                $push:
                  specialismIds: specialism._id
          if ++count < specialisms.length
            fetchSpecialism count
          else
            console.log 'done'
      fetchSpecialism 0