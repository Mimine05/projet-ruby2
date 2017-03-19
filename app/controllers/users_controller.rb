class UsersController < ApplicationController    
    def profil
        @user = User.find(params[:user_id])
        @formations = @user.formations
    end
    
    def profiluser
        @user = current_user
        @formations = Formation.all
    end

    def addformation
    	@user = current_user
    	@formation = Formation.find(params[:formation_id])
    	@user.formations << @formation

    	respond_to do |format|
    		format.html{redirect_to :back}
    		format.js
    	end

    end
    
end
