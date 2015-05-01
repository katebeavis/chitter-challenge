require 'support/test_helper'
require 'spec_helper'
require './app/server'

feature 'User adds a new peep only when signed in' do
  before(:each) do
    User.create(email: 'test@test.com',
                password: 'test',
                password_confirmation: 'test',
                name: 'test',
                username: 'test')
  end

  scenario 'when browsing the homepage' do
    expect(Peep.count).to eq(0)
    visit '/'
    sign_in('test@test.com', 'test')
    expect(page).to have_content('What\'s happening @test?')
    visit '/'
    add_peep('Hello')
    expect(Peep.count).to eq(1)
    peep = Peep.first
    expect(peep.message).to eq('Hello')
  end

  scenario 'with username' do
    expect(Peep.count).to eq(0)
    visit '/'
    sign_in('test@test.com', 'test')
    expect(page).to have_content('What\'s happening @test?')
    visit '/'
    add_peep('Hello')
    expect(Peep.count).to eq(1)
    expect(page).to have_content('@test')
  end
end
