Meteor.startup ->
  if Meteor.users.find().count() is 0
    id = Accounts.createUser
      email: 'admin@admin.com'
      password: 'password'
    Roles.addUsersToRoles id, ['admin']
    