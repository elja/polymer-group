#= require jquery
#= require jquery_ujs

#= require ./plugins/underscore/underscore.min
#= require gmaps/google

#= require_tree .

$ ->
  App.init();
  App.initSliders();