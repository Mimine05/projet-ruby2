class EntreprisesController < ApplicationController
    def profil
        @entreprise = current_entreprise
    end
    
    def profilentreprise
        @entreprise = current_entreprise
    end
end
