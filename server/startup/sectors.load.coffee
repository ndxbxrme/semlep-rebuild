Meteor.startup ->
  if Sectors.find().count() == 0
    sectors = [
      {
        'name': 'sector 1'
      }
      {
        'name': 'sector 2'
      }
    ]
    sectors.forEach (sector) ->
      Sectors.insert sector