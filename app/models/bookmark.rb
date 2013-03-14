class Bookmark < ActiveRecord::Base
  belongs_to :comic
  belongs_to :user
  attr_accessible :page
  validates_uniqueness_of :comic_id, scope: :user_id
end
