require 'rails_helper'

RSpec.describe Car, type: :model do
  
  background do
    @car = Car.new(licensePlateNumber: "9F4J1LN",
                    manufacturer: "HERO HONDA MOTORS LTD",
                    model: "model5",
                    hourlyRentalRate: 240.4,
                    style: "SUV",
                    location: "67948-9956",
                    status: "Available")
  
  end
  test "car should be suggested" do
    assert_not @car.isSuggested?
  end
  
  test "car should be available" do
    assert @car.isAvailable?
  end
 
end
