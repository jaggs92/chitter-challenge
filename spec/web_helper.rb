def sign_up
  visit '/user/new'
  fill_in :email, with: 'example@email.com'
  fill_in :password, with: 'password'
  fill_in :name, with: 'Harry'
  fill_in :user_name, with: 'harry123'
  click_button 'Sign up'
end
