class Patient < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => true
  has_many :appointments
  has_many :doctors, :through => :appointments
end