require 'spec_helper'

describe Comic do
  it { should validate_presence_of(:name) }
  it { should belong_to(:series) }

  it "should have cover" do
    FactoryGirl.create(:comic).should respond_to(:cover)
  end

end
