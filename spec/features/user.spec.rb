require 'rails_helper'
RSpec.feature "User management function", type: :feature do
  background do
  
    User.create!(name:  "Root Admin",
               email: "root_admin@gmail.com",
               password:              "123456",
               password_confirmation: "123456",
               role: "Admin")
    visit  users_path
    
    fill_in  'Email' ,  with: 'root_admin@gmail.com'
    fill_in  'Password' ,  with: '123456'
    click_on  'Login'
    expect(page ).to have_text('Cars')
   
 end
 scenario "Test user list" do
   expect(page).to have_content 'root_admin@gmail.com'
   visit users_path
  #  save_and_open_page
 end
 scenario "Test user details" do
   @user = User.first
   @user.name
   @user.email
 end
 scenario "Test number of users" do
  User.create!(name:  "bobby",
               email: "bobby@gmail.com",
               password:              "123456",
               password_confirmation: "123456",
               role: "Customer")
  @user = User.all.count
  expect(@user).to eq 2
end
 
scenario "Test user creation" do
  User.create!(name:  "shara",
               email: "shara@gmail.com",
               password:              "123456",
               password_confirmation: "123456",
               role: "Customer")
  user=User.last
  expect(user.email).to match("shara@gmail.com")
end
scenario "Test user details" do
  @user= User.create!(name:  "king",
  email: "king@gmail.com",
  password:              "123456",
  password_confirmation: "123456",
  role: "Customer")
  visit users_path(id: @user.id)
  expect(page).to have_content('king@gmail.com')
end
scenario 'Test user Deletion' do
  User.create!(name:  "didi",
  email: "didi@gmail.com",
  password:              "123456",
  password_confirmation: "123456",
  role: "Customer")
  @user = User.first
  @user.destroy
end
end