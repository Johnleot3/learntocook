Rails.application.routes.draw do
  match 'users/:id', to: 'users#show', via: 'get'
  resources :kitchens do
    resources :bookings, only: [ :new, :create]
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
