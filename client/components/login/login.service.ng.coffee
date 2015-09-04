'use strict'

angular.module 'semlepRebuildApp'
.factory 'login', ($state) ->
  showLogin = undefined
  
  showLogin: showLogin
  doLogout: ->
    Meteor.logout ->
      $state.go 'main'
  loginWithGithub: ->
    Meteor.loginWithGithub {}, (err) ->
      if not err
        showLogin = undefined
        $state.go 'dashboard'
  loginWithTwitter: ->
    Meteor.loginWithTwitter {}, (err) ->
      if not err
        showLogin = undefined
        $state.go 'dashboard'
  loginWithFacebook: ->
    Meteor.loginWithFacebook {}, (err) ->
      if not err
        showLogin = undefined
        $state.go 'dashboard'
  loginWithGoogle: ->
    Meteor.loginWithGoogle {}, (err) ->
      if not err
        showLogin = undefined
        $state.go 'dashboard'
  linkWithGithub: ->
    Meteor.linkWithGithub {}
  linkWithTwitter: ->
    Meteor.linkWithTwitter {}
  linkWithFacebook: ->
    Meteor.linkWithFacebook {}
  linkWithGoogle: ->
    Meteor.linkWithGoogle {}
  isAdmin: ->
    Roles.userIsInRole Meteor.user(), ['admin']
  isAdviser: ->
    Roles.userIsInRole Meteor.user(), ['adviser']