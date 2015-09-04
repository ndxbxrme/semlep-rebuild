@Locations = new Mongo.Collection('locations')
Locations.ndxModified()

Locations.allow
  insert: (userId, location) ->
    Roles.userIsInRole userId, ['admin']
  update: (userId, location, fields, modifier) ->
    Roles.userIsInRole userId, ['admin']
  remove: (userId, location) ->
    Roles.userIsInRole userId, ['admin']
