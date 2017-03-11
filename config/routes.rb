Rails.application.routes.draw do
    get 'entreprises/profil'
    get 'entreprise' => 'entreprises#profil'

    devise_for :entreprises do
    end


    get 'users/profil'
    get 'user' => 'users#profil'

    resources :interets
    resources :experiences
    resources :formations
    get 'home/index'

    devise_for :users do
        resources :users do 
            resources :formations
            resources :experiences
            resources :interets
        end
    end

    root to: 'home#index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
