class Appointment < ApplicationRecord
  belongs_to :patient
  validates_presence_of :time, :patient
end
