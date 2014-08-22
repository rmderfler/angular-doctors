require 'rails_helper'

describe Doctor do
  it { should validate_presence_of :name }

   it { should validate_uniqueness_of(:name) }

   it "capitalizes the name" do
    patient = Patient.new(:name => 'detroit')
    patient.save
    expect(patient.name).to eq "Detroit"
  end

end
