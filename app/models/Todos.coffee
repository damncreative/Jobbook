Collection = require './collection'
Todo = require './Todo'

module.exports = class Todos extends Collection
  localStorage: new Backbone.LocalStorage("todos")
  model: Todo