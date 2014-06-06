application = require('application')
HomeView = require('views/HomeView')
CreditsView = require('views/CreditsView')
TodosView = require('views/TodosView')
Todos = require 'models/Todos'

module.exports = class Router extends Backbone.Router

  routes:
    '': 'home'
    'credits': 'credits'
    'todos': 'todos'

  home: =>
    hv = new HomeView()
    application.layout.content.show(hv)

  credits: =>
    cv = new CreditsView()
    application.layout.content.show(cv)   

  todos: =>
    todos = new Todos
    todos.fetch()
    tv = new TodosView 
      collection: todos
    application.layout.content.show(tv)		
