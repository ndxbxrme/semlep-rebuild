Meteor.startup ->
  if Terms.find().count() == 0
    terms = [
      {
        'name': 'term 1'
      }
      {
        'name': 'term 2'
      }
    ]
    terms.forEach (term) ->
      Terms.insert term