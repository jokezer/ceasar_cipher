class WebAseanTestWork.Routers.BaseRouter extends Backbone.Router
  initialize: (options) ->

  routes:
    '': 'show_intro'
    'cipher/:user_url_alias': 'show_cipher'

  show_intro: ->
    user = new WebAseanTestWork.Models.User()
    users_intro_view = new WebAseanTestWork.Views.UsersIntroView(user)
    users_intro_view.render()

  show_cipher: (user_url_alias) ->
    @_show_loading()
    user = new WebAseanTestWork.Models.User(url_alias: user_url_alias)
    user.fetch(
      success: ->
        cipher_view = new WebAseanTestWork.Views.CipherView(user)
        cipher_view.render()
    )

  _show_loading: ->
    loading_view = new WebAseanTestWork.Views.LoadingView()
    loading_view.render()
