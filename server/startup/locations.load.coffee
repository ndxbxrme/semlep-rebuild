Meteor.startup ->
  if Locations.find().count() == 0
    locations = [
      {
        'name': 'location 1'
      }
      {
        'name': 'location 2'
      }
    ]
    locations.forEach (location) ->
      Locations.insert location