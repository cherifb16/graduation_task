require 'rails_helper'

RSpec.describe Car, type: :model do
 it "Validation  pass if none of the attribute is empty" do
   
  @car = Car.new(licensePlateNumber: "9F4J1LN",
  manufacturer: "HERO HONDA MOTORS LTD",
  model: "model5",
  hourlyRentalRate: 240.4,
  style: "SUV",
  location: "67948-9956",
  status: "Available")

   expect(@car).to be_valid
 end
 it "Validation does not pass if manufacturer is empty" do
  @car = Car.new(licensePlateNumber: "r",
  manufacturer: "",
  model: "model5",
  hourlyRentalRate: 240.4,
  style: "SUV",
  location: "67948-9956",
  status: "Available")
   expect(@car).not_to be_valid
 end
 it "validation goes not pass If location is empty" do
  @car = Car.new(licensePlateNumber: "",
  manufacturer: "",
  model: "model5",
  hourlyRentalRate: 240.4,
  style: "SUV",
  location: "",
  status: "Available")
   expect(@car).not_to be_valid
 end
 
end
