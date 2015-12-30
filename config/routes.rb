Rails.application.routes.draw do
  root to: "skis#index"
  resources :skis
end
