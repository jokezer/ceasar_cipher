class WebAseanTestWork.Views.CipherView extends Backbone.View
  template: JST["backbone/templates/cipher"]
  el: '#application'

  events:
    'blur input' : 'process_message'
    'blur textarea' : 'process_message'

  initialize: (@user) ->

  process_message: ->
    setTimeout(@update_message, 500)

  update_message: =>
    @user.save({message_attributes: {
        id: @user.get('message').id,
        shift: $('#message_shift').val(),
        content: $('#message_content').val(),
      }
    }, success: @update_view)

  update_view: (model) =>
    @user = model
    @render()

  render: ->
    $(@el).html(@template(@user.toJSON()))
    @
