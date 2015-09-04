@Stages = new Mongo.Collection('stages')
Stages.ndxModified()

Stages.allow
  insert: (userId, stage) ->
    Roles.userIsInRole userId, ['admin']
  update: (userId, stage, fields, modifier) ->
    Roles.userIsInRole userId, ['admin']
  remove: (userId, stage) ->
    Roles.userIsInRole userId, ['admin']
