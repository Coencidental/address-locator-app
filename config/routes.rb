Rails.application.routes.draw do
  root 'places#index'
  devise_for :users
  resources :places
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
