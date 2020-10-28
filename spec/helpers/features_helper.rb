def sign_up
  visit "/users/sign_up"
  fill_in :first_name, with: "linus"
  fill_in :last_name, with: "smit"
  fill_in :last_name, with: "smit"
  fill_in :email, with: "linus@ollie.com"
  fill_in :password, with: "password123"
  fill_in :password_confirmation, with: "password123"
  click_button "Sign Up"
end