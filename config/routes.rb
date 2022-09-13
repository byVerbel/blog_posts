Rails.application.routes.draw do
  resources :blogs
  root "application#hello"
end
