Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :pigeons do
    resources :bookings, only: :create
  end

  resources :bookings, except: :create
  # Defines the root path route ("/")
  # root "articles#index"
end
