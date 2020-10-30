require 'rails_helper'
require_relative '../helpers/features_helper.rb'

RSpec.feature "Timeline", type: :feature do
  scenario "Can update a post" do
    sign_up
    sign_in
    add_post
    click_button("edit")
    fill_in "post_message", with: "Goodbye, world!"
    click_button("Submit")
    expect(page).to have_content("Goodbye, world!")
  end
end