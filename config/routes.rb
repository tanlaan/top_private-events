Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  get 'users/:id', to: 'users#show', as: 'show_user'

  get 'events/:id/rsvp', to: 'events#rsvp', as: 'rsvp_event'
  get 'events/:id/cancel_rsvp', to: 'events#cancel_rsvp', as: 'cancel_rsvp_event'

  resources :events
  root 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
