class PatientsController < ApplicationController
  def index
    @patients = Patient.all
    render('patients/index.html.erb')
  end

  def show
    @patient = Patient.find(params[:id])
    render('patients/show.html.erb')
  end

  def new
    @patient = Patient.new
    render('patients/new.html.erb')
  end

  def create
    @patient = Patient.new(params[:patient])
    if @patient.save
      flash[:new] = "Patient added!"
      redirect_to("/patients/#{@patient.id}")
    else
      render('patients/new.html.erb')
    end
  end

  def edit
    @patient = Patient.find(params[:id])
    render('patients/edit.html.erb')
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(params[:patient])
      flash[:update] = "Patient updated!"
      redirect_to("/patients/#{@patient.id}")
    else
      render('patients/edit.html.erb')
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    redirect_to('/patients/')
  end
end