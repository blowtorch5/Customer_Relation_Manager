Rails.application.routes.draw do

  root to: "customers#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "up" => "rails/health#show", as: :rails_health_check

  resources :customers do
    collection do
      get 'alphabetized'
      get 'missing_email'
    end
  end
end
