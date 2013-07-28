# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :property, class: 'Property' do
    sequence(:address) {|n| "1234#{n} Road"}
    zipcode "49270"
    landlord
  end
end