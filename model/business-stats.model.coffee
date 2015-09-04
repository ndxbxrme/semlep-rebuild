@BusinessStats = new Mongo.Collection('businessStats')
BusinessStats.ndxModified()

BusinessStats.allow
  insert: (userId, businessStat) ->
    Roles.userIsInRole userId, ['admin']
  update: (userId, businessStat, fields, modifier) ->
    Roles.userIsInRole userId, ['admin']
  remove: (userId, businessStat) ->
    Roles.userIsInRole userId, ['admin']
