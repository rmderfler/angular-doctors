require 'pry'

class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
     respond_to do |format|
        format.json { render :json => @doctors }
      end
  end

  def show
    @doctor = Doctor.find(params[:id])
    render('doctors/show.html.erb')
  end

  def create
    @doctor = Doctor.new

    @doctor.name = params[:doctorName]

    if @doctor.save
      respond_to do |format|
        format.html do
          flash[:notice] = "Doctor created."
          redirect_to root_path
        end
        format.json { render :json => @doctor, :status => 201 }
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path }
        format.json { render :json => @doctor.errors, :status => 422 }
      end
    end
  end

  # def edit
  #   @doctor = Doctor.find(params[:id])
  #   render('doctors/edit.html.erb')
  # end

  def update
    @doctor = Doctor.find(params[:id])
    if @doctor.update(params[:doctor])
      respond_to do |format|
        format.html do
          flash[:notice] = "Doctor updated."
          redirect_to root_path
        end
        format.json { render :json => @doctor, :status => 201 }
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path }
        format.json { render :json => @doctor.errors, :status => 422 }
      end
    end
  end


  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.destroy
    respond_to do |format|
      format.html do
        flash[:notice] = "Doctor deleted."
        redirect_to root_path
      end
      format.json { head :no_content }
    end
  end

private

  def doctor_params
    params.require(:doctor).permit(:doctorName)
  end

end
