require 'test_helper'

feature 'Creating A Property Feature Test' do
  #before do
  #  @user = FactoryGirl.create :user, password: 'password'
  #  signin @user, 'password'
  #  visit new_frige_path
  #end

  before do
    visit new_property_path
  end

  scenario 'creating a property with valid data' do
    fill_in 'Address', with: '1234 St. Road'
    fill_in 'Zipcode', with: '49270'
    click_on 'Register Property'
    #puts page.body

    prop = Property.last
    prop.address.must_equal '1234 St. Road'
    prop.zipcode.must_equal '49270'
    #frig.user_id.must_equal @user.id

  end

  scenario 'submitting an empty form' do
    fill_in 'Address', with: ''
    click_on 'Register Property'

    Property.count.must_equal 0
    current_path.must_equal '/properties'
    page.must_have_content "Address can't be blank"
  end
end