class Comic < ActiveRecord::Base

  belongs_to :series
  attr_accessible :issue, :name
  validates_presence_of :name, :page_count

  def to_s
    name
  end

  def pages language = "en"
    _pages = []
    (0...page_count).each do |page_num|
      _pages.push "/library/#{Comic.pad id}/#{language}/#{Comic.pad page_num}.jpg"
    end
    return _pages
  end

  def cover
    pages[0]
  end

  def self.pad int
    "%05d" % int
  end

end
