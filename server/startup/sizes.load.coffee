Meteor.startup ->
  if Sizes.find().count() == 0
    sizes = [
      {
        'name': 'size 1'
      }
      {
        'name': 'size 2'
      }
    ]
    sizes.forEach (size) ->
      Sizes.insert size