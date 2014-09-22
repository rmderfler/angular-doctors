class PatientsController < ApplicationController
  def index
    @patients = Patient.all
    respond_to do |format|
      format.json { render :json => @patients }
    end
  end

  # def show
  #   @patient = Patient.find(params[:id])
  #   render('patients/show.html.erb')
  # end

  def new
    @patient = Patient.new
    render('patients/new.html.erb')
  end

  def create
    @patient = Patient.new
    @patient.name = params[:patientName]
    if @patient.save
      respond_to do |format|
        format.html do
          flash[:notice] = "Patient created."
          redirect_to root_path
        end
        format.json { render :json => @patient, :status => 201 }
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path }
        format.json { render :json => @patient.errors, :status => 422 }
      end
    end
  end

  # def edit
  #   @patient = Patient.find(params[:id])
  #   render('patients/edit.html.erb')
  # end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(params[:patient])
      respond_to do |format|
        format.html do
          flash[:notice] = "Patient updated."
          redirect_to root_path
        end
        format.json { render :json => @patient, :status => 201 }
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path }
        format.json { render :json => @patient.errors, :status => 422 }
      end
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    respond_to do |format|
      format.html do
        flash[:notice] = "Patient deleted."
        redirect_to root_path
      end
      format.json { head :no_content }
    end
  end

private

  def patient_params
    params.require(:patient).permit(:patientName)
  end
end
