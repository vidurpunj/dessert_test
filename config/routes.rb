Rails.application.routes.draw do
  resources :date_inputs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "date_inputs#index"
end
