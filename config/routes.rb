SampleApp::Application.routes.draw do

  resources :users
  resources :sessions
  # resources :articles

  root to: 'static_pages#home'

  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/manifesto', to: 'static_pages#manifesto'



end
