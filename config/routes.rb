Rails.application.routes.draw do
  get 'maps/index'
  root 'top#index'
  devise_for :admins, controllers: {session: 'admins/sessions'}
  namespace :admin do
    resources :ganres
    resources :lounges, :only => [:show, :edit, :update]
    resources :reviews, :only => [:show, :edit, :update, :destroy]
    resources :guests do
      get :search, on: :collection
    end
    patch 'guests/:id/return' => 'guests#return',as: 'return_guest'
    patch 'guests/:id/force_destroy' => 'guests#force_destroy',as: 'force_destroy_guest'
  end


  devise_for :guests, controllers: {session: 'guests/sessions',registrations: 'guests/registrations'}
  resources :guests, :only => [:show, :edit,:update, :destroy]

  namespace :guest do
  	resources :lounges do
      get :search, on: :collection
      post 'add' => 'favoritees#create'
      delete '/add' => 'favoritees#destroy'
    end
    resources :reviews do
      post 'like' => 'likes#create'
      delete '/like' => 'likes#destroy'
    end
  end
end