class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :url_alias

  has_one :message
end
