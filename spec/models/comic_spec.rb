require 'spec_helper'

describe Comic do

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:page_count) }
  it { should belong_to(:series) }

  it "should have cover" do
    comic = FactoryGirl.create(:comic)
    comic.cover.should eq(comic.pages.first)
  end

  it "should have pages" do
    language = "en"
    comic = FactoryGirl.create(:comic, page_count: 10)
    comic.pages.length.should eq(10)
    comic.pages.first.should eq("/library/#{Comic.pad comic.id}/#{language}/#{Comic.pad 0}.jpg")
  end

  it "should have languages"

end
