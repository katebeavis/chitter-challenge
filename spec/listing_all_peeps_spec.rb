require 'spec_helper'

feature 'User browses the list of peeps' do

  before(:each) do

    User.create(:email => 'test@test.com',
                :password => 'test',
                :password_confirmation => 'test',
                :name => 'test',
                :username => 'test')
    Peep.create(:message => 'Hi',
                :time => '11:07AM')
  end

  scenario 'when opening the home page' do
    visit '/'
    expect(page).to have_content('Hi')
  end
end