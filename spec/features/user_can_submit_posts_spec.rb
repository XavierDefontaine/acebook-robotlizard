require 'rails_helper'

RSpec.feature "Timeline", type: :feature do

  before do
    Timecop.freeze(Time.local(1994))
  end
  
  after do
    Timecop.return
  end

  scenario "Can submit posts and view them" do
    #sign_up
    visit "/users/sign_up"
    fill_in :user_first_name, with: "linus"
    fill_in :user_last_name, with: "smit"
    fill_in :user_last_name, with: "smit"
    fill_in :user_email, with: "linus@ollie.com"
    fill_in :user_password, with: "password123"
    fill_in :user_password_confirmation, with: "password123"
    click_button "Sign Up"
    User.find(first_name: "linus").skip_confirmation!

    #log_in
    fill_in :email, with: "linus@ollie.com"
    fill_in :password, with: "password123"


    expect(page).to have_content("What's on your mind?")


    # fill_in :message, with: "Hello, world!"
    # click_button "Submit"
    # expect(page).to have_content("What's on your mind?")
    # expect(page).to have_content("01/01/1994 0:00")
  end
end
