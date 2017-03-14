Rails.application.routes.draw do

  resources :posts
  devise_for :users, skip: [:registrations]
  root to: "welcome#index"
end
