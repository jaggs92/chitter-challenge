feature 'user signs up' do
  scenario 'I can sign up as a new user' do
    expect { sign_up }.to change(User, :count).by 1
    expect(page).to have_content('Welcome to Chitter, example@email.com')
    expect(User.first.email).to eq('example@email.com')
  end
end
