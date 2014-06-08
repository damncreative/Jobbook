require 'lib/view_helper'


class Application extends Backbone.Marionette.Application
  initialize: =>
         
    @on "initialize:after", (options) =>
      Backbone.history.start();
      # Freeze the object
      Object.freeze? this

    @addInitializer (options) =>
      # Authentication
      that = @
      @user = null
      @firebase = new Firebase("https://jobbook.firebaseIO.com/")
      @authClient = new FirebaseSimpleLogin @firebase, (error, user) =>
        console.log error if error
        console.log 'No User' unless user
        
        if user
          console.log 'User ID: ' + user.id + ', Provider: ' + user.provider 
          that.user = user

    @addInitializer (options) =>
      AppLayout = require 'views/AppLayout'
      @layout = new AppLayout()
      @layout.render()

    @addInitializer (options) =>
      # Instantiate the router
      Router = require 'lib/router'
      @router = new Router()

    @start()



module.exports = new Application()