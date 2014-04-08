WisconsinEngineer369::Application.routes.draw do
  get "magazine/new"
  root 'static_pages#home'
  match '/form',  to: 'magazine#new',            via: 'get'
  match '/help',   to: 'static_pages#help',   via: 'get'
  #match '/form',   to: 'static_pages#form',   via: 'get'
end
