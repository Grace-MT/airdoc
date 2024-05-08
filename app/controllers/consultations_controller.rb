class ConsultationsController < ApplicationController
  before_action :set_consultation, only: [:show, :destroy]

  def index
    @consultation = Consultation.new
    @consultations = current_user.consultations
  end

  def show
    @appointments = @consultation.appointments
    @appointment = Appointment.new
  end

  def new
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.new(consultation_params)
    @consultation.user = current_user

    if @consultation.save
      redirect_to consultation_path(@consultation), notice: "Consultaion was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @consultation.destroy
    redirect_to consultations_path, notice: "Consultaion was successfully deleted."
  end

  private

  def consultation_params
    params.require(:consultation).permit(:price_per_hour,:languages_spoken,:pretty_title,:location_city,:speciality,:years_of_experience,:availability,:duration)
  end

  def set_consultation
    @consultation = Consultation.find(params[:id])
  end
end
