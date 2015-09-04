@Cms = new Mongo.Collection('cms')
Cms.ndxModified()

Cms.allow
  insert: (userId, cm) ->
    Roles.userIsInRole userId, ['admin']
  update: (userId, cm, fields, modifier) ->
    Roles.userIsInRole userId, ['admin']
  remove: (userId, cm) ->
    Roles.userIsInRole userId, ['admin']
