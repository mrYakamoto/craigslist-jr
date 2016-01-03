class Article < ActiveRecord::Base
  include Slug
  include SecureRandom
  belongs_to :category

  before_save :create_slug
  before_save :create_randurl

  def create_randurl
    self.randurl ||= SecureRandom.urlsafe_base64(10)
  end

end
