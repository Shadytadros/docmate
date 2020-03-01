class AppointmentsController < ApplicationController
  def index
    @appointments = current_user.appointments
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user

  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def appointment_params
    params.require(:appointment).permit(:time, :patient)
  end
end
