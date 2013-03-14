require 'spec_helper'

describe User do

  it { should have_many(:comics).through(:bookmarks) }

  it "should have record_position method" do
    user = FactoryGirl.create(:user)
    comic = FactoryGirl.create(:comic)
    user.record_position(comic)
    user.comics.should eq([comic])
    expect{user.record_position(comic)}.to_not raise_error(ActiveRecord::RecordInvalid)
  end

  it "should have from_omniauth class method" do
    User.should respond_to("from_omniauth")
  end

end
