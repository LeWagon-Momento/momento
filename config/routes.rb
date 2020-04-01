Rails.application.routes.draw do
  get 'comment/new'
  get 'comment/create'
  devise_for :users
  root to: 'trips#index'
  get 'users/:id', to: 'users#show', as: 'user'
  get 'users/:id/edit', to: 'users#edit' # took reference from lecture
  resources :trips do
    get '/review', to: 'trips#review', as: :trip
    resources :posts
    resources :comments, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
