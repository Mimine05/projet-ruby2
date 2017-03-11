Rails.application.routes.draw do
  resources :interets
  resources :experiences
  resources :formations
    get 'home/index'

    devise_for :users, controllers: { sessions: 'users/sessions' }

    root to: 'home#index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
