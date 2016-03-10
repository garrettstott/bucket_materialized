Rails.application.routes.draw do
  root 'buckets#index'

  get '/home/index', to: 'home#index', as: 'home'


  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :buckets do
    resources :items
  end
end
