class ConsultationsController < ApplicationController
  def index
    # @consultations = current_user.consultations
    @consultations = Consultation.all
  end
  def show
    @consultation = Consultation.find(params[:id])
  end
  def new
    @consultation = Consultation.new
  end
  def create
    @consultation = Consultation.new(consultation_params)
    @consultation.user = current_user
    if @consultation.save
    redirect_to consultation_path(@consultation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def consultation_params
    params.require(:consultation).permit(:price_per_hour,:languages_spoken,:pretty_title,:location_city,:speciality,:years_of_experience,:availability,:duration)
  end
end
