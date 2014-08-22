class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
    render('appointments/index.html.erb')
  end

  def show
    @appointment = Appointment.find(params[:id])
    render('appointments/show.html.erb')
  end

  def new
    @appointment = Appointment.new
    render('appointments/new.html.erb')
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    if @appointment.save
      flash[:new] = "appointment added!"
      redirect_to("/appointments/#{@appointment.id}")
    else
      render('appointments/new.html.erb')
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
    render('appointments/edit.html.erb')
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(params[:appointment])
      flash[:update] = "appointment updated!"
      redirect_to("/appointments/#{@appointment.id}")
    else
      render('appointments/edit.html.erb')
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to('/appointments/')
  end


end