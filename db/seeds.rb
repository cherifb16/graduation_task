# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Generate User samples:
User.create!(name:  "Root Admin",
             email: "root_admin@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             role: "Admin")
User.create!(name:  "Root Admin",
             email: "chervis@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             role: "Admin")             
User.create!(name:  "Root Admin",
             email: "chervis1@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             role: "Admin")             
User.create!(name:  "Root SuperAdmin",
             email: "root_superadmin@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             role: "SuperAdmin")
             
User.create!(name:  "Example Customer",
             email: "example_customer@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             role: "Customer")
User.create!(name:  "king",
             email: "king@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             role: "Customer") 
User.create!(name:  "bobo",
             email: "bobo@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             role: "Customer") 
User.create!(name:  "soni",
             email: "soni@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             role: "Customer") 
User.create!(name:  "muso",
             email: "muso@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             role: "Customer")                          
User.create!(name:  "elvis",
             email: "elvis@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             role: "Customer") 
User.create!(name:  "mara",
             email: "mara@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             role: "Customer")             
User.create!(name:  "josh",
             email: "josh@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             role: "Customer") 
 Car.create!(licensePlateNumber: "RAA3456",
             manufacturer: "TOYOTA",
             model: "1967",
             hourlyRentalRate: 12,
             style: "SUV",
             location: "kigali",
             status: "Available")
             
Car.create!(licensePlateNumber: "RAE1098",
             manufacturer: "land cruiser",
             model: "2018",
             hourlyRentalRate: 12,
             style: "SUV",
             location: "kigali",
             status: "Available")
Car.create!(licensePlateNumber: "RAD2312",
             manufacturer: "RANGE ROVER",
             model: "2018",
             hourlyRentalRate: 12,
             style: "SUV",
             location: "kigali",
             status: "Available")
Car.create!(licensePlateNumber: "RAC3456",
             manufacturer: "mustang",
             model: "1996",
             hourlyRentalRate: 12,
             style: "SUV",
             location: "kigali",
             status: "Available")
Car.create!(licensePlateNumber: "RAE2378",
             manufacturer: "BMW",
             model: "2016",
             hourlyRentalRate: 12,
             style: "SUV",
             location: "kigali",
             status: "Available")
Car.create!(licensePlateNumber: "RAD4567",
             manufacturer: "yaris",
             model: "2015",
             hourlyRentalRate: 12,
             style: "SUV",
             location: "kigali",
             status: "Available")
Car.create!(licensePlateNumber: "RAE2067",
             manufacturer: "volkswagen",
             model: "2012",
             hourlyRentalRate: 12,
             style: "SUV",
             location: "kigali",
             status: "Available")
 Car.create!(licensePlateNumber: "RAC6789",
             manufacturer: "RAVA4",
             model: "2017",
             hourlyRentalRate: 12,
             style: "SUV",
             location: "kigali",
             status: "Available")
Car.create!(licensePlateNumber: "RAE2345",
             manufacturer: "suzuki",
             model: "2019",
             hourlyRentalRate: 12,
             style: "SUV",
             location: "kigali",
             status: "Available")
           
                               
             


