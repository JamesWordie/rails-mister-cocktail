Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [:create, :new, :show] do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create, :show]
    resources :garnish_tags, only: [:new, :create]
  end

  resources :doses, only: [:destroy]

  resources :reviews, only: [:destroy]

  resources :garnish_tags, only: [:destroy]
end
