require 'rails_helper'
require '/Users/linusmjornstedt/Projects/acebook-robotlizard/spec/helpers/features_helper.rb'

RSpec.feature "Timeline", type: :feature do

  before do
    Timecop.freeze(Time.local(1994))
  end
  
  after do
    Timecop.return
  end

  scenario "Can submit posts and view them" do
    sign_up

    expect(page).to have_content("Forgot your password?")
    # User.find(1).skip_confirmation!

    # #log_in
    # fill_in :email, with: "linus@ollie.com"
    # fill_in :password, with: "password123"


    # expect(page).to have_content("What's on your mind?")


    # # fill_in :message, with: "Hello, world!"
    # # click_button "Submit"
    # # expect(page).to have_content("What's on your mind?")
    # # expect(page).to have_content("01/01/1994 0:00")
  end
end
