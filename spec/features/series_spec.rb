require 'spec_helper'

describe "Series" do
  it "is homepage" do
    series = FactoryGirl.create(:series)
    visit root_path
    page.should have_content(series.name)
  end

  it "has show page" do
    series = FactoryGirl.create(:series)
    visit root_path
    click_link series.name
    current_path.should eq(series_path(series))
    page.should have_content(series.name)
  end
end
