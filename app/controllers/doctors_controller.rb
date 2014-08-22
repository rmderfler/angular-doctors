class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
    render('doctors/index.html.erb')
  end

  def show
    @doctor = Doctor.find(params[:id])
    render('doctors/show.html.erb')
  end
end