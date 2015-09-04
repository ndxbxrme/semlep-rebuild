@Queries = new Mongo.Collection('queries')

Queries.allow
  insert: (userId, query) ->
    userId
  update: (userId, query, fields, modifier) ->
    userId
  remove: (userId, query) ->
    userId
