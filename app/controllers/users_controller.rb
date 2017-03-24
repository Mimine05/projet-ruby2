class UsersController < ApplicationController    
    def profil
        @user = User.find(params[:user_id])
        @formations = @user.formations
        @experiences = @user.experiences
        @interets = @user.interets
    end
    
    def profiluser
        @user = current_user
        @formations = Formation.all
        @experiences = Experience.all
        @interets = Interet.all
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
    
    def addexperience
    	@user = current_user
    	@experience = Experience.find(params[:experience_id])
    	@user.experiences << @experience

    	respond_to do |format|
    		format.html{redirect_to :back}
    		format.js
    	end

    end

    def destroy_etu
        @etu = current_user.etus.find(params[:etu_id])
        @etu.destroy
        @user = current_user
        respond_to do |format|
            format.html { redirect_to profiluser_url, notice: 'etu was successfully destroyed.' }
            format.json { head :no_content }
            format.js
        end
    end
    
    def addinteret
    	@user = current_user
    	@interet = Interet.find(params[:interet_id])
    	@user.interets << @interet

    	respond_to do |format|
    		format.html{redirect_to :back}
    		format.js
    	end

    end

    def destroy_itu
        @itu = current_user.itus.find(params[:itu_id])
        @itu.destroy
        @user = current_user
        respond_to do |format|
            format.html { redirect_to profiluser_url, notice: 'Itu was successfully destroyed.' }
            format.json { head :no_content }
            format.js
        end
    end
    
    def user_params
        params.require(:user).permit(:avatar)
    end
    
end
