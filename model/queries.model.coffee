@Queries = new Mongo.Collection('queries')

Queries.allow
  insert: (userId, query) ->
    true
  update: (userId, query, fields, modifier) ->
    true
  remove: (userId, query) ->
    Roles.userIsInRole userId, ['admin']
