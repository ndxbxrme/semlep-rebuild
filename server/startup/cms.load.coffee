Meteor.startup ->
  if Cms.find().count() == 0
    cms = [
      {
        'name': 'cm 1'
      }
      {
        'name': 'cm 2'
      }
    ]
    cms.forEach (cm) ->
      Cms.insert cm