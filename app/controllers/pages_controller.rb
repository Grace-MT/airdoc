class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home

  def home
    @appointments = Appointment.where(user_id: current_user)
    @consultations = Consultation.all
  end
end
