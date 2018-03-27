class Address < ApplicationRecord
  validates :description, :street, :city, :state, :zip, presence: true
  belongs_to :student
end
