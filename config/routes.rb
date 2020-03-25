Rails.application.routes.draw do
  devise_for :users
  get 'users/:id', to: 'users#show'
  # get 'users/:id/edit', to: 'users#edit' # took reference from lecture
  resources :trips do
    resources :posts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
