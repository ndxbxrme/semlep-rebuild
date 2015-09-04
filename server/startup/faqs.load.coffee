Meteor.startup ->
  if Faqs.find().count() == 0
    faqs = [
      {
        'name': 'faq 1'
      }
      {
        'name': 'faq 2'
      }
    ]
    faqs.forEach (faq) ->
      Faqs.insert faq