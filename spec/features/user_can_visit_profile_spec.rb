require 'rails_helper'
require_relative '../helpers/features_helper.rb'

RSpec.feature "Timeline", type: :feature do

  scenario "Can visit profile and see their posts" do
    sign_up
    sign_in
    add_post
    add_comment
    click_link("linus's Profile")
    expect(page).to have_content("I walk the lonely toad")
  end
end