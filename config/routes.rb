Rails.application.routes.draw do

 
  root 'top#index'
  devise_for :admins, controllers: {session: 'admins/sessions'}
  namespace :admin do
  end


  devise_for :guests, controllers: {session: 'guests/sessions',registrations: 'guests/registrations'}
  resources :guests, :only => [:show, :edit,:update]

  namespace :guest do
  	resources :lounges
    resources :reviews
  end
end