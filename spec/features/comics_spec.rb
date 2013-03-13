require 'spec_helper'

describe "Comics" do
  it "has show page" do
    comic = FactoryGirl.create(:comic)
    visit comic_path(comic)
    page.should have_content(comic.name)
    page.should have_css("img[src$='#{comic.cover}']")
  end
end
