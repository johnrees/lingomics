require 'spec_helper'

describe Bookmark do
  it { should belong_to(:comic) }
  it { should belong_to(:user) }
end
