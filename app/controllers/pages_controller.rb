class PagesController < ApplicationController
  def home
    @appointments = Appointment.where(user_id: current_user)
  end
end
