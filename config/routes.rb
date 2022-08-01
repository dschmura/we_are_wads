Rails.application.routes.draw do

  devise_for :users, path: "accounts"
  
  resources :users do
    resources :biographies
    resources :quirks
    resources :hobbies
  end

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
