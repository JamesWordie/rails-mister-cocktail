Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :create, :new, :show] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]

  resources :cocktails, only: [] do
    resources :reviews, only: [:new, :create, :show]
  end
  resources :reviews, only: [:destroy]
end
