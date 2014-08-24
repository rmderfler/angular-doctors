class Doctor < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => true
  has_many :appointments
  has_many :patients, :through => :appointments
end