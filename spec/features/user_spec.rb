require 'rails_helper'

describe 'user things' do

  it 'a new user can create an account using form' do
    visit new_user_path

    fill_in 'user[username]', with: "TestUser"
    fill_in 'user[password]', with: "password"
    fill_in 'user[password_confirmation]', with: "password"

    click_on "Begin Your Sellout Journey--and make the world a better place!"

    expect(page).to have_content("TestUser")
  end
end
