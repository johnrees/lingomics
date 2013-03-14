FactoryGirl.define do
  factory :comic do
    series
    languages [:en]
    page_count 10
    issue 1
    sequence(:name) { |n| "Comic #{n}" }
  end
end
