class WebAseanTestWork.Models.User extends Backbone.Model
  paramRoot: 'user'
  url: ->
      url = '/api/users/'
      url = "#{url}#{@get('url_alias')}" if @get('url_alias')
      url

  defaults: {}

class WebAseanTestWork.Collections.UsersCollection extends Backbone.Collection
  model: WebAseanTestWork.Models.User
  url: '/api/users'
