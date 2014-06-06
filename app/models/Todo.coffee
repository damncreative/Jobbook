Model = require './model'

module.exports = class Todo extends Model
  localStorage: new Backbone.LocalStorage("todos")
  
  defaults:
    title: ''
    completed: false
    created: 0

  initialize: ->
    if @isNew()
      @set 'created', Date.now()

  toggle: ->
    @set 'completed', !@get 'completed'