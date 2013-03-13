require 'spec_helper'

describe Comic do
  it { should validate_presence_of(:name) }
  it { should belong_to(:series) }
end
