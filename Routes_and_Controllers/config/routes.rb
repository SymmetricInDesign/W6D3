Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users

  get 'users/', to: 'users#index'
  get 'users/:id', to: 'users#show'
  patch 'users/:id', to: 'users#update'
  put 'users/:id', to: 'users#update'
  get 'users/new', to: 'users#new'
  post 'users/', to: 'users#create'
  get 'users/:id/edit', to: 'users#edit'
  delete 'users/:id', to: 'users#destroy'

  resources :artworks, except: [:new, :edit]
  resources :artwork_shares, only: [:create, :destroy]

  get 'users/:id/artworks/', to: 'artworks#index'

end
