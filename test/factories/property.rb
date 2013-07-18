# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :property, class: 'Property' do
    address "1234 Road"
  end
end