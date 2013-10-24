SampleApp::Application.routes.draw do

  # resources :users do
  #  resources :articles, :only => [:create]
  # end
  resources :users
  resources :articles
  resources :sessions


  root to: 'static_pages#home'

  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/manifesto', to: 'static_pages#manifesto'
  match '/resources', to: 'static_pages#resources'

end
#== Route Map
# Generated on 23 Oct 2013 19:15
#
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#     sessions GET    /sessions(.:format)          sessions#index
#              POST   /sessions(.:format)          sessions#create
#  new_session GET    /sessions/new(.:format)      sessions#new
# edit_session GET    /sessions/:id/edit(.:format) sessions#edit
#      session GET    /sessions/:id(.:format)      sessions#show
#              PUT    /sessions/:id(.:format)      sessions#update
#              DELETE /sessions/:id(.:format)      sessions#destroy
#         root        /                            static_pages#home
#       signup GET    /signup(.:format)            users#new
#       signin GET    /signin(.:format)            sessions#new
#      signout DELETE /signout(.:format)           sessions#destroy
#        about        /about(.:format)             static_pages#about
#      contact        /contact(.:format)           static_pages#contact
#    manifesto        /manifesto(.:format)         static_pages#manifesto
#    resources        /resources(.:format)         static_pages#resources
