require 'rails_helper'
require_relative '../helpers/features_helper.rb'

RSpec.feature "Timeline", type: :feature do
  scenario "Can delete posts" do
    sign_up
    sign_in
    add_post
    find("button.delete_post").click
    expect(page).not_to have_content("Hello, world!")
  end
end