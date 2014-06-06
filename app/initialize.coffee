
$.fn.scrollBottom = ->
  $(document).height() - @scrollTop() - @height()

application = require 'application'

$ ->
  application.initialize()

  $(window).scroll ->
    y = $(window).scrollTop()
    $("#top-shadow").css
      display: "block"
      opacity: y / 20
    inverseY = $(window).scrollBottom()
    $("#footer-shadow").css
      display: "block"
      opacity: inverseY / 20

  setTimeout (->
    $("#footer-shadow").css
      display: "block"
      opacity: $(window).scrollBottom() / 20
  ), 100
  
