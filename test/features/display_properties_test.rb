require "test_helper"

feature 'Displaying Properties Feature Test' do
  describe 'with existing properties' do
    before do
      landlord = FactoryGirl.create(:landlords)
      #signin user
      property = FactoryGirl.create :property, landord: landlord
      Factorygirl.create :rentalapp, property: property
      visit properties_path
      puts page.body
    end
  end
end
