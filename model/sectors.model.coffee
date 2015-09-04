@Sectors = new Mongo.Collection('sectors')
Sectors.ndxModified()

Sectors.allow
  insert: (userId, sector) ->
    Roles.userIsInRole userId, ['admin']
  update: (userId, sector, fields, modifier) ->
    Roles.userIsInRole userId, ['admin']
  remove: (userId, sector) ->
    Roles.userIsInRole userId, ['admin']
