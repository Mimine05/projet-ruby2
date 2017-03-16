class UsersController < ApplicationController    
    def profil
        @user = User.find(params[:user_id])
        @formations = @user.formations
    end
    
    def profiluser
        @user = current_user
    end
    
end
