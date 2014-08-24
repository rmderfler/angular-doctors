class Doctor < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => true
  has_many :appointments
  has_many :patients, :through => :appointments


  # before_create :capital_case_name

  #   private

  # def capital_case_name
  #   self.name = self.name.capitalize!
  # end
  
end