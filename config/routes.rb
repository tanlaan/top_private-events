Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  get 'users/:id', to: 'users#show', as: 'show_user'

  resources :events
  root 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
