Rails.application.routes.draw do 
  root 'home#home'
  resources :employees
  get "up" => "rails/health#show", as: :rails_health_check
  get "employees-info", to:"employees#index"
  get "new", to:"employees#new"
  
end
