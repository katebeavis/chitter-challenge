def peep_creation
  subject.create(message: 'Hello World!')
end

def sign_in(email, password)
  visit('sessions/new')
  fill_in :email, with: email
  fill_in :password, with: password
  click_button 'Sign in'
end

def add_peep(message)
  within('#new-peep') do
    fill_in 'message', with: message
    click_button 'Peep'
  end
end

def sign_up(email = 'kate@kate.com',
            password = 'kate',
            password_confirmation = 'kate',
            name = 'kate beavis',
            username = 'kittykat')
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email, with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation
  fill_in :name, with: name
  fill_in :username, with: username
  click_button 'Sign up'
end
