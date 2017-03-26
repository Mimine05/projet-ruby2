class SecteursController < ApplicationController
  before_action :set_secteur, only: [:show, :edit, :update, :destroy]
  authorize_resource
  
  # GET /secteurs
  # GET /secteurs.json
  def index
    @secteurs = Secteur.all
  end

  # GET /secteurs/1
  # GET /secteurs/1.json
  def show
    @user = @secteur.users
  end

  # GET /secteurs/new
  def new
    @secteur = Secteur.new
  end

  # GET /secteurs/1/edit
  def edit
  end

  # POST /secteurs
  # POST /secteurs.json
  def create
    @secteur = Secteur.new(secteur_params)

    respond_to do |format|
      if @secteur.save
        format.html { redirect_to @secteur, notice: "Le secteur d'activité a été créé correctement." }
        format.json { render :show, status: :created, location: @secteur }
      else
        format.html { render :new }
        format.json { render json: @secteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secteurs/1
  # PATCH/PUT /secteurs/1.json
  def update
    @user = current_user
        
    @secteur.stes.where(user_id: @user.id).first.update(name: params[:name] )
        
    respond_to do |format|
      if @secteur.update(secteur_params)
        format.html { redirect_to @secteur, notice: "Le secteur d'activité a été mis à jour correctement." }
        format.json { render :show, status: :ok, location: @secteur }
      else
        format.html { render :edit }
        format.json { render json: @secteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secteurs/1
  # DELETE /secteurs/1.json
  def destroy
    @secteur.destroy
    respond_to do |format|
      format.html { redirect_to secteurs_url, notice: "Le secteur d'activité a été détruite correctement." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secteur
      @secteur = Secteur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secteur_params
      params.require(:secteur).permit(:name)
    end
end
