require 'spec_helper'

describe "Users" do
  it "has profile" do
    visit root_path
    click_link "sign_in"
    user = User.last
    user.record_position FactoryGirl.create(:comic, name: "Spider-man")
    click_link "John Rees"
    page.should have_content "Profile"
    page.should have_link "Spider-man"
  end
end
