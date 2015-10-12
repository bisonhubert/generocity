Rails.application.routes.draw do

  get 'transactions/new'

  get 'carts/show'

  resources :items, only: [:show, :index]

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resource :cart, only: [:show] do
    put 'add/:item_id', to: 'carts#add', as: :add_to
    put 'remove/:item_id', to: 'carts#remove', as: :remove_from
  end

  resources :transactions, only: [:new, :create]

  get 'welcome/index'
  root 'items#index'

end
