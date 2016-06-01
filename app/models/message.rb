class Message < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true

  def shift
    super || 1
  end

  def encoded_content
    return unless content
    
    CeasarCipher.new(content, shift).encode
  end
end
