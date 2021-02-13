Rails.application.routes.draw do
  devise_for :students
  devise_for :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "businesses#index"
  resources :businesses, Only: [:index]

end
