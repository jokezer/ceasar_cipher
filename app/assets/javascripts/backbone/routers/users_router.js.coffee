class WebAseanTestWork.Routers.UsersRouter extends Backbone.Router
  initialize: (options) ->

  routes:
    '': 'show_intro'

  show_intro: ->
    user_model = new WebAseanTestWork.Models.User({name: 'user_name'})
    users_intro_view = new WebAseanTestWork.Views.UsersIntroView(user_model)
    users_intro_view.render()
