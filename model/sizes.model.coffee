@Sizes = new Mongo.Collection('sizes')

Sizes.allow
  insert: (userId, size) ->
    userId
  update: (userId, size, fields, modifier) ->
    userId
  remove: (userId, size) ->
    userId
