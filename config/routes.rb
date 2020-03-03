Rails.application.routes.draw do
  devise_for :admins, controllers: {session: 'admins/sessions'}
  namespace :admin do
  end


  devise_for :guests, controllers: {session: 'guests/sessions',registrations: 'guests/registrations'}
  namespace :guest do
  end
end