Meteor.startup ->
  if Profiles.find().count() == 0
    profiles = [
      {
        'name': 'profile 1'
      }
      {
        'name': 'profile 2'
      }
    ]
    profiles.forEach (profile) ->
      Profiles.insert profile