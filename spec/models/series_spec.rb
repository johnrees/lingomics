require 'spec_helper'

describe Series do
  it { should validate_presence_of(:name) }
  it { should have_many(:comics) }
end
