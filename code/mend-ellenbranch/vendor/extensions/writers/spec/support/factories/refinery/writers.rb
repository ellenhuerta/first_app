
FactoryGirl.define do
  factory :writer, :class => Refinery::Writers::Writer do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

