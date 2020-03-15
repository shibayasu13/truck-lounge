Rails.application.routes.draw do


  get 'maps/index'
  root 'top#index'
  resources :maps, only: [:index]
  devise_for :admins, controllers: {session: 'admins/sessions'}
  namespace :admin do
    resources :ganres
    resources :guests
  end


  devise_for :guests, controllers: {session: 'guests/sessions',registrations: 'guests/registrations'}
  resources :guests, :only => [:show, :edit,:update]

  namespace :guest do
  	resources :lounges do
      post 'add' => 'favoritees#create'
      delete '/add' => 'favoritees#destroy'
    end
    resources :reviews
  end
end