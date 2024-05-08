class AppointmentsController < ApplicationController
  before_action :set_consultation, only: [:new, :create]

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new()
    @appointment.status = appointment_params[:status]
    @appointment.consultation = @consultation

    full_name = appointment_params[:user].split
    patient = User.find_by(first_name: full_name[0], last_name: full_name[1])

    if patient
      @appointment.user_id = patient.id
    else
      redirect_to new_consultation_appointment_path(@consultation), notice: "no such patient exist"
      return
    end
    # raise
    if @appointment.save
      redirect_to consultation_path(@consultation), notice: "Appointment was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    Appointment.find(params[:id]).destroy
    redirect_to consultations_path, notice: "Appointment was successfully deleted."
  end

  private

  def appointment_params
    params.require(:appointment).permit(:status,:user)
  end

  def set_consultation
    @consultation = Consultation.find(params[:consultation_id])
  end
end
