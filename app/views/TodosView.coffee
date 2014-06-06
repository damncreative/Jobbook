TodoView = require './TodoView'
module.exports = class TodosView extends Backbone.Marionette.CompositeView
  id: 'todos-view'
  template: 'views/templates/todos'
  itemView: TodoView
  itemViewContainer: '#todos'

  ui:
    input: '#new-item'

  events:
    'click .add': 'add'
    'keypress #new-item': 'onInputKeypress'

  add: ->
    console.log 'add'
    if @ui.input.val().length > 0
      @collection.create
        title: @ui.input.val().trim()

      @ui.input.val('')    

  onInputKeypress: (event)->
    ENTER_KEY = 13;
    if event.which is ENTER_KEY
      @add()
    