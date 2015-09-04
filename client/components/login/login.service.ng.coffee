'use strict'

angular.module 'semlepRebuildApp'
.factory 'login', ->
  
  # Private API
  meaningOfLife = 42
  
  # Public API
  someMethod: () ->
    meaningOfLife
