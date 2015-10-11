Rails.application.routes.draw do

  resources :items, only: [:show, :index]
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  # devise_for :users
  get 'welcome/index'
  root 'items#index'

end
