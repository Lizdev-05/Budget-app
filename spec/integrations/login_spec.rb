require 'rails_helper'

RSpec.feature 'Logins', type: :feature do
  background { visit new_user_registration_path }

  scenario 'with valid information' do
    fill_in 'user[name]', with: 'Oyinlade'
    fill_in 'Email', with: 'oyinlade@gmail.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'

    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  scenario 'with invalid information' do
    fill_in 'user[name]', with: ''
    fill_in 'Email', with: 'oyin@gmail.com'
    fill_in 'Password', with: '123456'

    click_button 'Sign up'
    expect(page).to have_content("Name can't be blank")
  end
end