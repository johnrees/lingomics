require 'spec_helper'

describe User do

  it "should have from_omniauth class method" do
    User.should respond_to("from_omniauth")
  end

end