@Terms = new Mongo.Collection('terms')
Terms.ndxModified()

Terms.allow
  insert: (userId, term) ->
    Roles.userIsInRole userId, ['admin']
  update: (userId, term, fields, modifier) ->
    Roles.userIsInRole userId, ['admin']
  remove: (userId, term) ->
    Roles.userIsInRole userId, ['admin']
