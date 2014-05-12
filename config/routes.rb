WisconsinEngineer369::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :articles, only: [:new, :show, :create, :destroy]
  get "articles/new"
  get "magazine/new"
  root 'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/magazine',  to: 'magazine#new', :as => :magazines,            via: 'get'
  match '/help',   to: 'static_pages#help',   via: 'get'
  match '/advertise',   to: 'static_pages#advertise',   via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
end
