'use strict'

angular.module 'semlepRebuildApp'
.factory 'login', ($state, $timeout) ->
  showLogin = undefined
  loginError = undefined
  hideLogin = ->
    $timeout ->
      showLogin = undefined
  popLogin = ->
    $timeout ->
      showLogin = true
  
  showLogin: ->
    showLogin
  loginError: ->
    loginError
  hideLogin: hideLogin
  popLogin: popLogin
  doLogout: ->
    Meteor.logout ->
      $state.go 'main'
  register: (newUser) ->
    Accounts.createUser newUser, (err) ->
      if err
        loginError = err.reason
      else
        loginError = undefined
        hideLogin()
        $state.go 'dashboard'
  loginWithPassword: (newUser) ->
    console.log 'hey'
    Meteor.loginWithPassword newUser.email, newUser.password, (err) ->
      if err
        loginError = err.reason
      else
        loginError = undefined
        hideLogin()
        $state.go 'dashboard'
  loginWithGithub: ->
    Meteor.loginWithGithub {}, (err) ->
      if not err
        hideLogin()
        $state.go 'dashboard'
  loginWithTwitter: ->
    Meteor.loginWithTwitter {}, (err) ->
      if not err
        hideLogin()
        $state.go 'dashboard'
  loginWithFacebook: ->
    Meteor.loginWithFacebook {}, (err) ->
      if not err
        hideLogin()
        $state.go 'dashboard'
  loginWithGoogle: ->
    Meteor.loginWithGoogle {}, (err) ->
      if not err
        hideLogin()
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