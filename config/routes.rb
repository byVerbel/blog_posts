Rails.application.routes.draw do
  resources :blogs
  resources :apun_self_evaluations
  resources :bibliographies
  root "blogs#index"
end
