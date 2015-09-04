Meteor.startup ->
  if Messages.find().count() == 0
    messages = [
      {
        'name': 'message 1'
      }
      {
        'name': 'message 2'
      }
    ]
    messages.forEach (message) ->
      Messages.insert message