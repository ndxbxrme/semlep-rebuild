@BusinessStats = new Mongo.Collection('businessStats')

BusinessStats.allow
  insert: (userId, businessStat) ->
    userId
  update: (userId, businessStat, fields, modifier) ->
    userId
  remove: (userId, businessStat) ->
    userId
