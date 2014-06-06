CreditsView = require 'views/CreditsView'

describe 'CreditsView', ->
  beforeEach ->
    @view = new CreditsView
    @view.render()

  afterEach ->
    @view.close()

  it 'should auto-render', ->
    expect(@view.$el.find '.container').to.have.length 1

  it 'should contain brunch skeleton mit license', ->
    expect(@view.$el.find('.container').text()).to.contain 'MIT License'

  it 'should contain brunch skeleton getting started information', ->
    expect(@view.$el.find('.container').text()).to.contain 'Getting Started'

  it 'should contain jQuery version', ->
    expect(@view.$el.find('.list-group').text()).to.contain 'jQuery'
    expect(@view.$el.find('.list-group').text()).to.contain '1.11.0'

  it 'should contain Backbone version', ->
    expect(@view.$el.find('.list-group').text()).to.contain 'Backbone'
    expect(@view.$el.find('.list-group').text()).to.contain '1.1.0'

  it 'should contain Underscore version', ->
    expect(@view.$el.find('.list-group').text()).to.contain 'Underscore'
    expect(@view.$el.find('.list-group').text()).to.contain '1.5.2'

  it 'should contain Twitter Bootstrap version', ->
    expect(@view.$el.find('.list-group').text()).to.contain 'Twitter Bootstrap'
    expect(@view.$el.find('.list-group').text()).to.contain '3.0.2'

  it 'should contain MarionetteJS version', ->
    expect(@view.$el.find('.list-group').text()).to.contain 'MarionetteJS'
    expect(@view.$el.find('.list-group').text()).to.contain '1.3.0'
