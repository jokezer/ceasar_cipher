class WebAseanTestWork.Views.UsersIntroView extends Backbone.View
  template: JST["backbone/templates/users_intro"]
  el: '#application'

  events:
    'submit' : 'submit_intro_form'

  initialize: (@model) ->

  render: ->
    $(@el).html(@template(@model))
    @

  submit_intro_form: (e) ->
    e.preventDefault()
    name_input = $('input[name=name]').first()
    name = name_input.val()

    if(name)
      name_input.attr(disabled: true)
      @model.save({ name: name }, success: @redirect_to_user_page)
    else
      alert('Insert user name')

  redirect_to_user_page: (user) ->
    Backbone.history.navigate("/cipher/#{user.get('url_alias')}", trigger: true)
