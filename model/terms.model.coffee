@Terms = new Mongo.Collection('terms')

Terms.allow
  insert: (userId, term) ->
    userId
  update: (userId, term, fields, modifier) ->
    userId
  remove: (userId, term) ->
    userId
