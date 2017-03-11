Rails.application.routes.draw do
    get 'users/profil'
    get 'user' => 'users#profil'
    delete 'users/sign_out' => 'users/session#destroy'
    resources :users do 
        resources :formations
        resources :experiences
        resources :interets
    end

    resources :interets
    resources :experiences
    resources :formations
    get 'home/index'

    devise_for :users, controllers: { sessions: 'users/sessions' }

    root to: 'home#index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
