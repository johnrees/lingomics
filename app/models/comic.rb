class Comic < ActiveRecord::Base
  belongs_to :series
  attr_accessible :issue, :name
  validates_presence_of :name

  def to_s
    name
  end
end
