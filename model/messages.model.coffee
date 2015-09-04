@Messages = new Mongo.Collection('messages')
Messages.ndxModified()

Messages.allow
  insert: (userId, message) ->
    userId
  update: (userId, message, fields, modifier) ->
    userId
  remove: (userId, message) ->
    Roles.userIsInRole userId, ['admin']
