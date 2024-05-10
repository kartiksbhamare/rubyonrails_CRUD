Rails.application.routes.draw do 
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  root 'home#home'
  resources :employees
  resources :documents
  get "up" => "rails/health#show", as: :rails_health_check
  get "employees-info", to:"employees#index"
  get "new", to:"employees#new"
  delete '/employees/:id', to: 'employees#destroy'
end
