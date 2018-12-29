class Property < ApplicationRecord
  validates :header, presence: true, length: { in: 20..500 }
  validates :year_built, presence: true, length: { is: 4 }
  validates :building_type, presence: true
  validates :description, presence: true, length: { in: 20..3000 }
  validates :building_class, inclusion: { in: %w(A B C),
    message: "%{value} is not a valid type" }

  validates :zipcode, presence: true,
                      length: { is: 5 },
                      numericality: { only_integer: true }

  validates :country, presence: true, length: { is: 2 }
  validates :street, presence: true
  validates :state, presence: true, length: { is: 2 }
  validates :city, presence: true
end

#create a custom method that validates whether or not an address has been taken.
