class WebAseanTestWork.Views.CipherView extends Backbone.View
  template: JST["backbone/templates/cipher"]
  el: '#application'

  events:
    'change input' : 'process_message'
    'change textarea' : 'process_message'

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
    console.log(model.get('message').encoded_content)
    $('#message_encoded_content').html(model.get('message').encoded_content)

  render: ->
    $(@el).html(@template(@user.toJSON()))
    @
