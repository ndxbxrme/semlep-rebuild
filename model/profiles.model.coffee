@Profiles = new Mongo.Collection('profiles')

Profiles.allow
  insert: (userId, profile) ->
    true
  update: (userId, profile, fields, modifier) ->
    true
  remove: (userId, profile) ->
    true
