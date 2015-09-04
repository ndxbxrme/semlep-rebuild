Meteor.startup ->
  if Stages.find().count() == 0
    stages = [
      {
        'name': 'stage 1'
      }
      {
        'name': 'stage 2'
      }
    ]
    stages.forEach (stage) ->
      Stages.insert stage