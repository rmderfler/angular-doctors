class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all

    respond_to do |format|
      format.html
      format.json { render :json => @appointments }
    end
  end

  # def show
  #   @appointment = Appointment.find(params[:id])

  #   respond_to do |format|
  #     format.html
  #     format.json { render :json => @appointments }
  #   end
  # end

  def create
    @appointment = Appointment.new
    @appointment.appointment_time = params[:appointmentTime]
    @appointment.patient_id = params[:patientName]
    @appointment.doctor_id = params[:doctorName]
    if @appointment.save
      respond_to do |format|
        format.html do
          flash[:notice] = "appointment created."
          redirect_to root_path
        end
        format.json { render :json => @appointment, :status => 201 }
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path }
        format.json { render :json => @appointment.errors, :status => 422 }
      end
    end
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(params[:appointment])
      respond_to do |format|
        format.html do
          flash[:notice] = "Student updated."
          redirect_to root_path
        end
        format.json { render :json => @student, :status => 201 }
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path }
        format.json { render :json => @student.errors, :status => 422 }
      end
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    respond_to do |format|
      format.html do
        flash[:notice] = "Appointment deleted."
        redirect_to root_path
      end
      format.json { head :no_content }
    end
  end


end
