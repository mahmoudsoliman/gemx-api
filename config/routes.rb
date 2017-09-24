Rails.application.routes.draw do
    resources :lbs
    resources :gms
    get '/lbsforgm', to:'lbs#getlbsforgm'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
