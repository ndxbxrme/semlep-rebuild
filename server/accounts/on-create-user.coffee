Accounts.onCreateUser (options, user) ->
  Meteor.setTimeout ->
    Roles.addUsersToRoles user._id, ['adviser']
  if options.profile
    user.profile = options.profile
  user