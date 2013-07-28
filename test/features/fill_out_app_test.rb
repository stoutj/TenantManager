require "test_helper"

# To be handled correctly by Capybara this spec must end with "Feature Test"
feature "Fillout Application Feature Test" do

  before :each do
    RentalApp.delete_all
    @prop = FactoryGirl.create :property

  end

  describe "with valid data" do
    before do
      visit new_property_rental_app_path(@prop)
      #puts page.body
      within('#new_rental_app') do
        fill_in 'Firstname', with: 'bubba'
        fill_in 'Lastname', with: 'smith'
        fill_in 'Email', with: 'dhh@example'
        fill_in 'Propertyaddress', with: '1234 St Road'
        fill_in 'Home phone', with: '734-555-1212'
        click_on 'Sign Up'
        puts "RentalApp Count = " + RentalApp.count.to_s
        #puts page.body
      end
    end

    scenario "adds rental app to the database"  do
      RentalApp.count.must_equal 1
    end

    scenario "redirects to the rental_app's show view" do
      current_path.must_equal property_rental_app_path(@prop, RentalApp.last)
    end

    scenario "show view must contain the basic applicants info" do
      app = RentalApp.last
      page.must_have_content app.firstname
      page.must_have_content app.lastname
      page.must_have_content app.email
      page.must_have_content app.propertyaddress
    end
  end


  describe "with invalid data" do
    before do
      visit new_property_rental_app_path(@prop)
    end

    scenario "displays errors when submitting empty form" do
      within('#new_rental_app') do
      click_on 'Sign Up'
      end

      page.must_have_content "Firstname can't be blank"
      current_path.must_equal property_rental_apps_path(@prop) #'/rental_apps'
    end
  end


end