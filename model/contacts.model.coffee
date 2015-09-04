@Contacts = new Mongo.Collection('contacts')
Contacts.ndxModified()

Contacts.allow
  insert: (userId, contact) ->
    true
  update: (userId, contact, fields, modifier) ->
    Roles.userIsInRole userId, ['admin']
  remove: (userId, contact) ->
    Roles.userIsInRole userId, ['admin']
