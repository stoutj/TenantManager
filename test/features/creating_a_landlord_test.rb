require 'test_helper'

feature 'Creating A Landlord Feature Test' do

  before do
    visit new_landlord_path
    #puts page.body
  end

  scenario 'creating a landlord with valid data' do
    fill_in 'Email', with: 'bubba@gump.com'
    fill_in 'Password', with: 'p@ssword'
    click_on 'Sign Up'
    puts page.body

    landlord = Landlord.last
    landlord.email.must_equal 'bubba@gump.com'
    #frig.user_id.must_equal @user.id
    landlord.password.must_equal 'p@ssword'

  end
end
