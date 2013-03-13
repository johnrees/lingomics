require 'spec_helper'

describe "Series" do
  it "is homepage" do
    series = FactoryGirl.create(:series)
    visit root_path
    page.should have_content(series.name)
  end
end
