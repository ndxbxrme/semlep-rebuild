@Messages = new Mongo.Collection('messages')

Messages.allow
  insert: (userId, message) ->
    userId
  update: (userId, message, fields, modifier) ->
    userId
  remove: (userId, message) ->
    userId
