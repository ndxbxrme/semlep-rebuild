@BusinessStats = new Mongo.Collection('businessStats')
BusinsessStats.ndxModified()

BusinessStats.allow
  insert: (userId, businessStat) ->
    Roles.userIsInRole userId, ['admin']
  update: (userId, businessStat, fields, modifier) ->
    Roles.userIsInRole userId, ['admin']
  remove: (userId, businessStat) ->
    Roles.userIsInRole userId, ['admin']
