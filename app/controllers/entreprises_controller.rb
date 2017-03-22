class EntreprisesController < ApplicationController
    def profil
        @entreprise = Entreprise.find(params[:entreprise_id])
    end
    
    def profilentreprise
        @entreprise = current_entreprise
    end
end
