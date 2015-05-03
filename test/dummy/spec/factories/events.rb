FactoryGirl.define do
  factory :event do
    sequence(:name) { |i| "Event ##{i}" }
  end
end
