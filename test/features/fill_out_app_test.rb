require "test_helper"



# To be handled correctly by Capybara this spec must end with "Feature Test"
feature "Fillout Application Feature Test" do

  before :each do
    RentalApp.delete_all
    visit new_rental_app_path
  end

  scenario "create a new rental application" do

    puts page.body
    within('#new_rental_app') do
      fill_in 'Firstname', with: 'bubba'
      fill_in 'Lastname', with: 'smith'
      fill_in 'Email', with: 'dhh@example'
      fill_in 'Propertyaddress', with: '1234 St Road'
      fill_in 'Home phone', with: '734-555-1212'
      click_on 'Sign Up'
    end
    myapp = RentalApp.last
    myapp.firstname.must_equal 'bubba'
    myapp.lastname.must_equal 'smith'
    myapp.email.must_equal 'dhh@example'
    myapp.propertyaddress.must_equal '1234 St Road'
    myapp.valid?.must_equal true
    RentalApp.count.must_equal 1
    current_path.must_equal rental_app_path(RentalApp.last)
    page.must_have_content myapp.firstname
    page.must_have_content myapp.email
  end


describe "with invalid data" do
  before do
    RentalApp.create(firstname: 'Bob',lastname: 'Tinkerton', email:'bobtinkerton@yahoo.com', propertyaddress:'1234 St Road')
    visit new_rental_app_path
  end

  scenario "displays errors when submitting empty form" do
    within('#new_rental_app') do
      fill_in 'Firstname', with: ''
      click_on 'Sign Up'
    end

    page.must_have_content "Firstname can't be blank"
    current_path.must_equal '/rental_apps'
  end


end


end
