class Message < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true

  def shift
    super || 1
  end
end
