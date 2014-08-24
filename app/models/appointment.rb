class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  #has_many :doctors
  #has_many :patients

end