require 'spec_helper'

describe "Home" do
  it "has homepage" do
    visit '/'
    page.should have_content("Browse")
  end
end
