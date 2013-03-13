FactoryGirl.define do

  # sequence(:random_string) {|n| "Series #{n}" }

  factory :series do
    sequence(:name) { |n| "Series #{n}" }
  end

  factory :comic do
    series
    page_count 10
    issue 1
    sequence(:name) { |n| "Comic #{n}" }
  end

end
