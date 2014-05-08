WisconsinEngineer369::Application.routes.draw do
  get "users/new"
  get "articles/new"
  get "magazine/new"
  root 'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/form',  to: 'magazine#new',            via: 'get'
  match '/help',   to: 'static_pages#help',   via: 'get'
end
