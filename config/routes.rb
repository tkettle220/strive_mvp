Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :answers, only: [:new, :create, :index]
  resources :questions, only: [:show]
  resources :users, only: [:new, :create, :show]

  resources :messages, only: [:show, :create]

  root to: redirect('/users/new')
end
