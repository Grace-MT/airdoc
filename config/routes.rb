Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # devise_for :users

  # # Doctors
  # resources :doctors, only: [:new, :create] # Assuming you may want to separate doctors from regular users

  # # Consultations
  # resources :consultations, only: [:new, :create, :index] do
  #   resources :appointments, only: [:create]
  # end

  # # Appointments
  # resources :appointments, only: [:show, :update]

  # # Users
  # resources :users, only: [] do
  #   resources :appointments, only: [:index] # For patients to view their appointments
  # end
end

# commenting for jokes
