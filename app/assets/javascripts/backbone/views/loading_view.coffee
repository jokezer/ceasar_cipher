class WebAseanTestWork.Views.LoadingView extends Backbone.View
  template: JST["backbone/templates/loading"]
  el: '#application'

  render: ->
    $(@el).html(@template(@model))
    @
