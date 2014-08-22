class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
    render('doctors/index.html.erb')
  end

  def show
    @doctor = Doctor.find(params[:id])
    render('doctors/show.html.erb')
  end

  def new
    @doctor = Doctor.new
    render('doctors/new.html.erb')
  end

  def create
    @doctor = Doctor.new(params[:doctor])
    if @doctor.save
      redirect_to("/doctors/#{@doctor.id}")
    else
      render('doctors/new.html.erb')
    end
  end

  def edit
    @doctor = Doctor.find(params[:id])
    render('doctors/edit.html.erb')
  end

  def update
    @doctor = Doctor.find(params[:id])
    if @doctor.update(params[:doctor])
      redirect_to("/doctors/#{@doctor.id}")
    else
      render('doctors/edit.html.erb')
    end
  end
end