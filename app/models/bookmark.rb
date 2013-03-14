class Bookmark < ActiveRecord::Base
  belongs_to :comic
  belongs_to :user
  attr_accessible :page
end
