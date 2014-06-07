HomeView = require 'views/HomeView'

describe 'HomeView', ->
  beforeEach ->
    @view = new HomeView
    @view.render()

  afterEach ->
    @view.close()
