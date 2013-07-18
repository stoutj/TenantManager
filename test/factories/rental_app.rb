# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rentalapp, class: 'RentalApp' do
    email "stoutj734@gmail.com"
    firstname "jim"
    lastname "stout"
    propertyaddress "1234 Road"
    home_phone "7343201036"
    property
  end
end