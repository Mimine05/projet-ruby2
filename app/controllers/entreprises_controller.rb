class EntreprisesController < ApplicationController
    def profil
        @user = current_user
    end
end
