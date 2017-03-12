class UsersController < ApplicationController    
    def profil
        @user = User.find(params[:user_id])
        @formations = @user.formations
    end
    
    def editFormationByUser
        @user = current_user
        @formation = @user.formations.find(params[:formation_id])
        
        @formation.update(params.require(:formation).permit(:name, :etablissement, :annee, :description))
    end
    
end
