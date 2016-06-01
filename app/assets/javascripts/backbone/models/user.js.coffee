class WebAseanTestWork.Models.User extends Backbone.Model
  paramRoot: 'user'
  url: '/api/users'

  defaults: {}

class WebAseanTestWork.Collections.UsersCollection extends Backbone.Collection
  model: WebAseanTestWork.Models.User
  url: '/api/users'
