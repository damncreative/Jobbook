
TodoView = require './TodoView'
module.exports = class TodoView extends Backbone.Marionette.ItemView
  tagName: 'tr'
  template: 'views/templates/todo'
  className: 'todo'
  value: ''

  events:
    'click .toggle': 'toggle'
    'click .destroy': 'destroy'

  modelEvents:
    'change': 'modelChanged'

  initialize: ->
    console.log @$el
    @value = @model.get 'title'

  onRender: ->
    @$el
      .removeClass 'success'
      .addClass if @model.get('completed') then 'success' else ''

  destroy: ->
    @model.destroy()

  toggle: ->
    @model.toggle().save()

  modelChanged: ->
    console.log 'changed'
    @render()