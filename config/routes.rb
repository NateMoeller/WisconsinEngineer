WisconsinEngineer369::Application.routes.draw do
  get "articles/new"
  get "magazine/new"
  root 'static_pages#home'
  match '/form',  to: 'magazine#new',            via: 'get'
  match '/help',   to: 'static_pages#help',   via: 'get'
end
