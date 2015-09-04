Meteor.startup ->
  if Specialisms.find().count() == 0
    specialisms = [
      {
        'name': 'specialism 1'
      }
      {
        'name': 'specialism 2'
      }
    ]
    specialisms.forEach (specialism) ->
      Specialisms.insert specialism