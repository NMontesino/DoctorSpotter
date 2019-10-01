class SessionsController < ApplicationController

  def login
    render :login
  end

  def verification
    @patient = Patient.find_by(email: params[:email])

      if @patient && @patient.authenticate(params[:password])
      session[:user_id] = @patient.id
      redirect_to patient_path(@patient)
    else
      flash[:errors] = ["Email or password invalid. Please, try it again"]
      redirect_to login_path
    end

    def logout
      session.delete(:user_id)
      redirect_to login_path
    end

  end



















end
