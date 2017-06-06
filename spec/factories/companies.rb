FactoryGirl.define do
  factory :company do
    sequence :name do |n|
      "ESPN#{n}"
    end
  end