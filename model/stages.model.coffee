@Stages = new Mongo.Collection('stages')

Stages.allow
  insert: (userId, stage) ->
    userId
  update: (userId, stage, fields, modifier) ->
    userId
  remove: (userId, stage) ->
    userId
