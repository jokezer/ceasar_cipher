#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.WebAseanTestWork =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}

  init: ->
    new WebAseanTestWork.Routers.BaseRouter()

    Backbone.history.start({pushState: true, root: '/'});

$ ->
  WebAseanTestWork.init()
