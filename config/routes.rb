Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login', to: "sessions#new", as: 'login'
  post 'sessions', to: "sessions#create", as: 'sessions'
  delete 'sessions', to: "sessions#destroy"
  get 'signup', to: "users#new", as: 'signup'
  post 'users', to: "users#create", as: 'users'
  get 'home', to: "users#welcome", as: 'home'
  root 'users#welcome'
end
