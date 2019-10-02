class AppointmentsController < ApplicationController

  def index
    @appointments = @current_patient.appointments
  end


  def new
    @appointment = Appointment.new(doctor_id: params["doctor_id"], patient_id: @current_patient.id)
  end

  def create

    @appointment = Appointment.create(set_params)
    byebug
    if @appointment.valid?
      redirect_to patient_path(@current_patient)
    else
      redirect_back fallback_location: search_path()
    end


  end

  private

  def set_params
    params.require(:appointment).permit(:date, :condition, :doctor_id, :patient_id)
  end


end
