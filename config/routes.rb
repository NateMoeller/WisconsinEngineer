WisconsinEngineer369::Application.routes.draw do
  resources :users
  get "articles/new"
  get "magazine/new"
  root 'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/form',  to: 'magazine#new',            via: 'get'
  match '/help',   to: 'static_pages#help',   via: 'get'
  match '/advertise',   to: 'static_pages#advertise',   via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
end
