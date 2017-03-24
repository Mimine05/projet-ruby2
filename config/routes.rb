Rails.application.routes.draw do
    resources :stes
    resources :itus
    resources :etus
    resources :ftus

    get 'users/profil'
    get 'user' => 'users#profil'

    get 'users/profiluser'
    get 'user' => 'users#profiluser'

    get 'addformation' => 'users#addformation'
    get 'destroyftu' => 'users#destroy_ftu'
    
    get 'addexperience' => 'users#addexperience'
    get 'destroyetu' => 'users#destroy_etu'
    
    get 'addinteret' => 'users#addinteret'
    get 'destroyitu' => 'users#destroy_itu'

    get 'addsecteur' => 'users#addsecteur'
    get 'destroyste' => 'users#destroy_ste'

    devise_for :users, :controllers => {:omniauth_callback => "omniauth_callback"} do 
        resources :formations
        resources :experiences
        resources :interets
        resources :secteurs
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
