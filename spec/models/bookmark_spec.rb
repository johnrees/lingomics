require 'spec_helper'

describe Bookmark do
  it { should belong_to(:comic) }
  it { should belong_to(:user) }
  it { should validate_uniqueness_of(:comic_id).scoped_to(:user_id) }
end
