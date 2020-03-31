Rails.application.routes.draw do
  devise_for :users
  get 'users/:id', to: 'users#show'
  get 'users/:id/edit', to: 'users#edit' # took reference from lecture
  resources :trips do
    get '/review', to: 'trips#review', as: :trip
    resources :posts
  end
  namespace :admin do
    resources :trips, only: [:index, :edit, :update, :destroy]
    # delete "trips/:id", to: "trips#destroy"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
