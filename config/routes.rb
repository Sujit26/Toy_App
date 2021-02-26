Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#index' 
  get "/home", to: "static_pages#index",  :as => :home
  get "/about" , to: "static_pages#about", :as =>  :about
  get "/help" , to: "static_pages#help", :as => :help
  get "/contact" , to: "static_pages#contact" , :as => :contact
  get '/signup', to: 'users#new', :as => :signup

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  
  resources :users
end
