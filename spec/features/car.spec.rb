require 'rails_helper'

RSpec.feature "car management function", type: :feature do
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
  click_on 'Cars'
  click_on 'Add new car'
  fill_in  'Licenseplatenumber' ,  with: 'gfhf456'
  fill_in  'Manufacturer' ,  with: 'suzuki'
  fill_in  'Model' ,  with: 'new'
  fill_in  'Hourlyrentalrate' ,  with: '50'
  
  fill_in  'Location' ,  with: 'kigali'
  
  
  click_on 'Submit car info'
  
 end
 scenario "Test car list" do
  click_on 'Cars'
  click_on 'Add new car'
  fill_in  'Licenseplatenumber' ,  with: 'gfhf456'
  fill_in  'Manufacturer' ,  with: 'suzuki'
  fill_in  'Model' ,  with: 'new'
  fill_in  'Hourlyrentalrate' ,  with: '50'
  # fill_in  'Style' ,  with: 'coupe'
  fill_in  'Location' ,  with: 'kigali'
  # fill_in  'Status' ,  with: 'available'
  
  click_on 'Submit car info'
  visit cars_path
  expect(page).to have_content 'gfhf456'
  expect(page).to have_content 'suzuki'
 
 
 end
 scenario "Test car creation" do
   
  visit new_car_path
  
  click_on 'Cars'
  click_on 'Add new car'
  fill_in  'Licenseplatenumber' ,  with: 'RAD4444'
  fill_in  'Manufacturer' ,  with: 'BMW'
  fill_in  'Model' ,  with: 'new'
  fill_in  'Hourlyrentalrate' ,  with: '50'
  fill_in  'Location' ,  with: 'gikondo'
  click_on 'Submit car info'
  visit cars_path
  expect(page).to have_content('RAD4444')
  expect(page).to have_content('BMW')
  
 end
 scenario "Test car details" do
   car1=Car.first
   visit car_path(id: car1.id)
   expect(page).to have_content('suzuki')
  
 end

 scenario "Test car updating" do
   car1=Car.first
   visit edit_car_path(id: car1.id)
   fill_in  'Licenseplatenumber' ,  with: 'RAD4244'
   fill_in  'Manufacturer' ,  with: 'audi'
  
   click_on 'Submit car info'
   visit cars_path
   expect(page).to have_content('RAD4244')
   expect(page).to have_content('audi')
 end
#  scenario "test car search" do
#   visit cars_path
#   fill_in  'Location' ,  with: 'kigali'
#   click_on 'Search'
#   expect(page).to have_content('suzuki')
# end
end

