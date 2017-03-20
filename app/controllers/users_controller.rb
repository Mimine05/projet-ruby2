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

    def destroy_ftu
        @ftu = current_user.ftus.find(params[:ftu_id])
        @ftu.destroy
        @user = current_user
        respond_to do |format|
            format.html { redirect_to profiluser_url, notice: 'Ftu was successfully destroyed.' }
            format.json { head :no_content }
            format.js
        end
    end
    
end
