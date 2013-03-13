FactoryGirl.define do

  sequence(:random_string) {|n| "Series #{n}" }

  factory :series do
    name { generate(:random_string) }
  end

  factory :comic do
    series nil
    page_count 10
    issue 1
    name { generate(:random_string) }
  end

end
