class PatientsController < ApplicationController
  def index
    @patients = current_user.patients
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
    @user = current_user
  end

  def create
    @patient = Patient.new(patient_params)
    @user = current_user
    @patient.user = @user
    if @patient.save
      redirect_to patients_path
    else
      render :new
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :notes)
  end
end
