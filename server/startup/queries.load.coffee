Meteor.startup ->
  if Queries.find().count() == 0
    queries = [
      {
        'name': 'query 1'
      }
      {
        'name': 'query 2'
      }
    ]
    queries.forEach (query) ->
      Queries.insert query