Rails.application.routes.draw do
  resources :products
  devise_for :users
  root to: 'page#home'
  get '/about',to: 'page#about'

resources :categories, except: [:delete, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
