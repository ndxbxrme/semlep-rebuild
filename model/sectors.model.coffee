@Sectors = new Mongo.Collection('sectors')

Sectors.allow
  insert: (userId, sector) ->
    userId
  update: (userId, sector, fields, modifier) ->
    userId
  remove: (userId, sector) ->
    userId
