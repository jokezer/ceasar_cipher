class MessageSerializer < ActiveModel::Serializer
  attributes :id, :shift, :content, :encoded_content
end
