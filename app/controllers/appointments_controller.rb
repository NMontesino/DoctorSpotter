class AppointmentsController < ApplicationController

  def new
    byebug
    @appointment = Appointment.new()
    @doctor = Doctor.find()


  end


end
