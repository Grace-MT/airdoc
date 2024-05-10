Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :appointments, only: [:destroy, :index]
  # Consultations
    resources :consultations, only: [:new, :create, :index, :show, :destroy] do
      resources :appointments, only: [:new, :create]
    end

end
