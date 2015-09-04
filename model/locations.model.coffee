@Locations = new Mongo.Collection('locations')

Locations.allow
  insert: (userId, location) ->
    userId
  update: (userId, location, fields, modifier) ->
    userId
  remove: (userId, location) ->
    userId
