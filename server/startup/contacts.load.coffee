Meteor.startup ->
  if Contacts.find().count() == 0
    contacts = [
      {
        'name': 'contact 1'
      }
      {
        'name': 'contact 2'
      }
    ]
    contacts.forEach (contact) ->
      Contacts.insert contact