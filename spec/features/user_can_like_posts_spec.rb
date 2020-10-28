require 'rails_helper'
require_relative '../helpers/features_helper.rb'

RSpec.feature "Timeline", type: :feature do

  scenario "Can comment on a post" do
    sign_up
    sign_in
    add_post

    find("input[type=button][name='Like 0']").click


  end
end