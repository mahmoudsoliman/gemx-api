Rails.application.routes.draw do
  resources :lbs
  resources :gms
  post "gms", to: "gms#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
