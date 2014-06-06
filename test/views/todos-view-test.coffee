TodosView = require 'views/TodosView'
Todos = require 'models/Todos'
describe 'TodosView', ->
  before ->
    @todos = new Todos

  beforeEach ->
    @view = new TodosView 
      collection: @todos
    @view.render()

  afterEach ->
    @view.close()

  it 'should auto-render .page-header', ->
    expect(@view.$el.find '.page-header').to.have.length 1

  it 'should auto-render ui input #new-item', ->
    expect(@view.$el.find '#new-item').to.have.length 1

  it 'should auto-render ui button .add', ->
    expect(@view.$el.find '.add').to.have.length 1

  it 'should auto-render #todos', ->
    expect(@view.$el.find '#todos').to.have.length 1
