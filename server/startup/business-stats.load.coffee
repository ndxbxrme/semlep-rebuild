Meteor.startup ->
  if BusinessStats.find().count() == 0
    businessStats = [
      {
        'name': 'businessStat 1'
      }
      {
        'name': 'businessStat 2'
      }
    ]
    businessStats.forEach (businessStat) ->
      BusinessStats.insert businessStat