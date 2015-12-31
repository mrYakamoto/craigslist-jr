require_relative 'slug'

class Category < ActiveRecord::Base
  include Slug
  has_many :articles
  validates :title, uniqueness: true

  before_save :create_slug

end
