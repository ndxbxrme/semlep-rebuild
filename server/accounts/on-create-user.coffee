Accounts.onCreateUser (options, user) ->
  Meteor.setTimeout ->
    if not Roles.userIsInRole user._id, ['admin']
      Roles.addUsersToRoles user._id, ['adviser']
  if options.profile
    user.profile = options.profile
  user