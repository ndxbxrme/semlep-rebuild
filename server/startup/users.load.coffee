Meteor.startup ->
  if Users.find().count() == 0
    users = [
      {
        'name': 'user 1'
      }
      {
        'name': 'user 2'
      }
    ]
    users.forEach (user) ->
      Users.insert user