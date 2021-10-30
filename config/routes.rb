Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index', as: 'home'
  get '/login', to: 'login#index', as: 'login'
  post '/newlogin', to: 'login#login', as: 'newlogin'
  get '/logout', to: 'login#logout', as: 'logout'
  get '/newacount', to: 'register#index', as: 'newacount'
  post '/createacount', to: 'register#create', as: 'createacount'
  get '/list', to: 'register#list', as: 'list'
  
end
