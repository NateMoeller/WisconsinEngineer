WisconsinEngineer369::Application.routes.draw do
  root 'static_pages#home'
  match '/help',   to: 'static_pages#help',   via: 'get'
  match '/form',   to: 'static_pages#form',   via: 'get'
end
