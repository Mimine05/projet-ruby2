Rails.application.routes.draw do
    resources :stes
    resources :itus
    resources :etus
    resources :ftus

    get 'entreprises/profil'
    get 'entreprise' => 'entreprises#profil'
    
    get 'entreprises/profil'
    get 'entreprise' => 'entreprises#profilentreprise'

    get 'users/profil'
    get 'user' => 'users#profil'

    get 'users/profiluser'
    get 'user' => 'users#profiluser'

    get 'addformation' => 'users#addformation'
    get 'destroyftu' => 'users#destroy_ftu'

    devise_for :users do
        resources :formations
        resources :experiences
        resources :interets
    end
    devise_for :entreprises do
        resources :secteur
    end 
    
    resources :secteurs do
        resources :stes
    end
    resources :interets do
        resources :itus
    end
    resources :experiences do
        resources :etus
    end
    resources :formations do
        resources :ftus
    end
    
    root to: 'home#index'
    
    get 'home/index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
