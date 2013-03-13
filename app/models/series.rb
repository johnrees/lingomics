class Series < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name
  has_many :comics

  def to_s
    name
  end
end
