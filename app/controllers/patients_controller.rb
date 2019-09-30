class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update]

  def new
    @patient = Patient.new
  end



  def create
    if password_confirmation?
      @patient = Patient.create(set_patient_params)
      validate_patient()
    else
      flash[:errors] = ["Passwords don't match. Please, try it again"]
      redirect_to new_patient_path()
    end
  end

  def show

  end

  def edit


  end

  def update
    @patiente = Patient.update(set_patient_params)

    redirect_to patient_path(@patient)
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

  def validate_patient
    if @patient.valid?
      redirect_to patient_path(@patient)
    else
      flash[:errors] = @patient.errors.full_messages
      redirect_to new_patient_path()
    end
  end

  def find_patient
    @patient = Patient.find(params[:id])
    return @patient
  end


end
