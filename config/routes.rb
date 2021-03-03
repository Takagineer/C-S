Rails.application.routes.draw do

  
  devise_for :students, controllers: {
    sessions:'students/sessions',
    passwords:'students/passwords',
    registrations:'students/registrations',
  }

  devise_for :companies,controllers: {
    sessions:'companies/sessions',
    passwords:'companies/passwords',
    registrations:'companies/registrations',
  }



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "businesses#index"
  resources :companies, only: [:index, :show, :edit] do
    resources :businesses, only: [:index, :new, :create]
  end

  resources :likes, only:[:create, :destroy]

  resources :students, only: [:index, :search] do 
    member do
      get 'search'
    end
  end
end
