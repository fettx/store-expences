Rails.application.routes.draw do
 
  root :to => "home#index"
  resources :entereds
  resources :expences
end
