@Profiles = new Mongo.Collection('profiles')
Profiles.ndxModified()
Profiles.friendlySlugs()

Profiles.allow
  insert: (userId, profile) ->
    profile.adviserId = userId
    userId
  update: (userId, profile, fields, modifier) ->
    userId
  remove: (userId, profile) ->
    Roles.userIsInRole userId, ['admin']
