Rails.application.routes.draw do
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'collections#index'
  resources :collections, only: :index
end
