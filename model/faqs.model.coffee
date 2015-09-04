@Faqs = new Mongo.Collection('faqs')
Faqs.ndxModified()
Faqs.friendlySlugs()

Faqs.allow
  insert: (userId, faq) ->
    Roles.userIsInRole userId, ['admin']
  update: (userId, faq, fields, modifier) ->
    Roles.userIsInRole userId, ['admin'] 
  remove: (userId, faq) ->
    Roles.userIsInRole userId, ['admin'] 
