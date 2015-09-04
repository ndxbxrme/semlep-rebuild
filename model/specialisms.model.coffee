@Specialisms = new Mongo.Collection('specialisms')
Specialisms.ndxModified()
Specialisms.friendlySlugs()

Specialisms.allow
  insert: (userId, specialism) ->
    Roles.userIsInRole userId, ['admin']
  update: (userId, specialism, fields, modifier) ->
    Roles.userIsInRole userId, ['admin']
  remove: (userId, specialism) ->
    Roles.userIsInRole userId, ['admin']
