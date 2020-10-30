require 'rails_helper'
require_relative '../helpers/features_helper.rb'

RSpec.feature "Timeline", type: :feature do

  before do
    Timecop.freeze(Time.local(1994))
  end
  
  after do
    Timecop.return
  end

  scenario "Can submit add a post and view them" do
    sign_up
    sign_in

    fill_in :post_message, with: "Hello, world!"
    within(".new_post") do
      click_on("Post")
    end
    expect(page).to have_content("Hello, world!")
    expect(page).to have_content("What's on your mind?")
    expect(page).to have_content("01/01/1994 at 0:00")
  end
end
