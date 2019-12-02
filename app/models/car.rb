class Car < ApplicationRecord
    
  enum styles: [:Coupe, :Sedan, :SUV]
  enum statuses: [:CheckedOut, :Available, :Reserved, :Suggested]

  validates :licensePlateNumber, presence: true, uniqueness: {case_sensitive: false}, length: {is: 7}
  validates :manufacturer, presence: true
  validates :model, presence: true
  validates :hourlyRentalRate, presence: true, numericality: { greater_than_or_equal_to: 1 }
 
  validates :location, presence: true
 
  
  def isAvailable?
    status == "Available"
  end
  
  def isSuggested?
    status == "Suggested"
  end
  
end
