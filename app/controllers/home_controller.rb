class HomeController < ApplicationController
    def index
        @users = User.where(:role => 'Particulier')
        @entreprises = User.where(:role => 'Entreprise')
        if user_signed_in?
	        @user = current_user
	        @formations = @user.formations
	        @experiences = @user.experiences
	        @interets = @user.interets
            @secteurs = @user.secteurs
            @offres = @user.offres
   		end
    end
end
