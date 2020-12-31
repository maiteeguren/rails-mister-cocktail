Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'cocktails#index'
  get 'search', to: 'cocktails#search'
  
  resources :cocktails, only: [ :index, :create, :show, :search, :update ] do
    resources :reviews, only: [ :new, :create, :index ]
    resources :doses, only: [ :new, :create ]
  end

  resources :doses, only: :destroy
end
