
  Rails.application.routes.draw do

    resources :readers, except: [:new, :create] do #readers have goals
      resources :goals
      resources :books
    end
  
    resources :goals do #goals have many plots associated with them
      resources :plots
    end
  
    resources :goals
    
    resources :books do
      resources :goals
      resources :plots
    end
    # resources :plots
    get '/home', to: "readers#home"
    get '/signup', to: "readers#new", as: "signup"
    post '/signup', to: "readers#create"
    get '/login', to: "sessions#new", as: "login"
    post '/login', to: "sessions#create"
    post '/logout', to: "sessions#destroy"
    get "/auth/facebook/callback", to: "sessions#create_with_fb"
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end