Rails.application.routes.draw do
    resources :itus
    resources :etus
    resources :ftus

    get 'entreprises/profil'
    get 'entreprise' => 'entreprises#profil'

    devise_for :entreprises do
    end

    get 'users/profil'
    get 'user' => 'users#profil'

    get 'users/profiluser'
    get 'user' => 'users#profiluser'

    resources :interets do
        resources :itus
    end
    resources :experiences do
        resources :etus
    end

    resources :formations do
        resources :ftus
    end
    
    get 'home/index'

    devise_for :users do
        resources :formations
        resources :experiences
        resources :interets
    end

    root to: 'home#index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
