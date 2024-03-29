Rails.application.routes.draw do

  resources :audit_logs do
    member do
      get :confirm
    end
  end

  namespace :admin do
    resources :users
    resources :posts
    resources :admin_users
    resources :employees

    root to: "users#index"
  end

  resources :posts do
    member do
      get :approve
    end
  end

  devise_for :users, skip: [:registrations]
  root to: "static#index"
end
