Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :user
  resources :posts, only: %i[new create edit update delete]
end
