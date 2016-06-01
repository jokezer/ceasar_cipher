class User < ActiveRecord::Base
  validates :name, presence: true
  validates :url_alias, presence: true

  before_validation :set_url_alias, if: :new_record?

  private

  def set_url_alias
    self.url_alias = (0...8).map { (65 + rand(26)).chr }.join.downcase
  end
end
