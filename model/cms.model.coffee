@Cms = new Mongo.Collection('cms')

Cms.allow
  insert: (userId, cm) ->
    userId
  update: (userId, cm, fields, modifier) ->
    userId
  remove: (userId, cm) ->
    userId
