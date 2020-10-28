def sign_up
  visit "/users/sign_up"
  fill_in :user_first_name, with: "linus"
  fill_in :user_last_name, with: "smit"
  fill_in :user_last_name, with: "smit"
  fill_in :user_email, with: "linus@ollie.com"
  fill_in :user_password, with: "password123"
  fill_in :user_password_confirmation, with: "password123"
  find("input[type=submit][value='Sign up']").click
end