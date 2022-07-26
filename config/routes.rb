Rails.application.routes.draw do
  resources :twitadvices
  resources :hobbies
  resources :quirks
  resources :profiles
  devise_for :users

  scope controller: :static_pages do
    get :about
    get :contact
    get :index
    get :privacy
    get :team 
    get :projects
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#index"
end
