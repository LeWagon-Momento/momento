Rails.application.routes.draw do
  devise_for :users
  get 'users/:id', to: 'users#show' # don't forget to commit this too
  resources :trips do
    resources :posts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
