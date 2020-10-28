require 'rails_helper'
require_relative '../helpers/features_helper.rb'

RSpec.feature "Timeline", type: :feature do

  scenario "Can edit a comment" do
    sign_up
    sign_in
    add_post
    add_comment

