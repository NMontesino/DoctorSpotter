class PatientsController < ApplicationController


  def new
    @patient = Patient.new
  end

  def create

    if password_confirmation?
      @patient = Patient.create(set_patient_params)
      redirect_to patient_path(@patient)
    else
      flash[:error] = "Passwords don't match. Please, try it again"
      redirect_to new_patient_path
    end

  end


  private
  def set_patient_params
    params.require(:patient).permit(:first_name, :last_name, :email, :password)
  end

  def password_confirmation?
    if params[:patient][:password] == params[:patient][:password_confirmation]
      return true
    else
      return false
    end
  end


end
