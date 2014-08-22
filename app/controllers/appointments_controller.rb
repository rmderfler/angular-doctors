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

end