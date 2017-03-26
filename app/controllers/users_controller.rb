class UsersController < ApplicationController    
    def profil
        @user = User.find(params[:user_id])
        @formations = @user.formations
        @experiences = @user.experiences
        @interets = @user.interets
        @secteurs = @user.secteurs
        @offres = @user.offres
    end
    
    def profiluser
        @user = current_user
        @formations = Formation.all
        @experiences = Experience.all
        @interets = Interet.all
        @secteurs = Secteur.all
        @offres = Offre.all
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
            format.html { redirect_to profiluser_url, notice: 'La formation a été détruite correctement.' }
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
            format.html { redirect_to profiluser_url, notice: "L'expérience a été détruite correctement." }
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
            format.html { redirect_to profiluser_url, notice: "L'intérêt a été détruit correctement." }
            format.json { head :no_content }
            format.js
        end
    end

    def addsecteur
        @user = current_user
        @secteur = Secteur.find(params[:secteur_id])
        @user.secteurs << @secteur

        respond_to do |format|
            format.html{redirect_to :back}
            format.js
        end

    end

    def destroy_ste
        @ste = current_user.stes.find(params[:ste_id])
        @ste.destroy
        @user = current_user
        respond_to do |format|
            format.html { redirect_to profiluser_url, notice: "Le secteur d'activité a été détruit correctement." }
            format.json { head :no_content }
            format.js
        end
    end

    def addoffre
        @user = current_user
        @offre = Offre.find(params[:offre_id])
        @user.offres << @offre

        respond_to do |format|
            format.html{redirect_to :back}
            format.js
        end

    end

    def destroy_ote
        @ote = current_user.otes.find(params[:ote_id])
        @ote.destroy
        @user = current_user
        respond_to do |format|
            format.html { redirect_to profiluser_url, notice: "L'offre a été détruit correctement." }
            format.json { head :no_content }
            format.js
        end
    end
    
end
