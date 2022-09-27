Rails.application.routes.draw do
  resources :blogs
  resources :apun_self_evaluations, only: %i[create update destroy]
  resources :bibliographies, only: %i[create update destroy]
  root "blogs#index"
end
