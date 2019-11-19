Rails.application.routes.draw do

  resources :restaurants, only: [:show, :new, :index, :create] do
    resources :reviews, only: [:new, :create]
  end

  namespace :admin do
    resources :restaurants, only: [:edit, :update, :destroy]
  end
end
