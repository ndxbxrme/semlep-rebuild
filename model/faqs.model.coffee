@Faqs = new Mongo.Collection('faqs')

Faqs.allow
  insert: (userId, faq) ->
    true
  update: (userId, faq, fields, modifier) ->
    true
  remove: (userId, faq) ->
    true
