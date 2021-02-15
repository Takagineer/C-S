Rails.application.routes.draw do
  get 'companies/show'
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
  resources :companies, only: [:index, :show] do
    resources :businesses, only: [:index]
  end

end
