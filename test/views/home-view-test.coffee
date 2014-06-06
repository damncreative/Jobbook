HomeView = require 'views/HomeView'

describe 'HomeView', ->
  beforeEach ->
    @view = new HomeView
    @view.render()

  afterEach ->
    @view.close()

  it 'should auto-render', ->
    expect(@view.$el.find '.jumbotron').to.have.length 1

  it 'should contain MTodoExample', ->
    expect(@view.$el.find('.jumbotron').text()).to.contain 'MTodoExample'

  it 'should contain mrw neundorf\'s name', ->
    expect(@view.$el.find('.jumbotron').text()).to.contain 'MRW Neundorf'
