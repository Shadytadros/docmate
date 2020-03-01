class Patient < ApplicationRecord
  belongs_to :user
  has_many :appointments
  validates_presence_of :name
end
