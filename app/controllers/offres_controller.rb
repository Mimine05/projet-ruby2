class OffresController < ApplicationController
  before_action :set_offre, only: [:show, :edit, :update, :destroy]

  # GET /offres
  # GET /offres.json
  def index
    @offres = Offre.all
  end

  # GET /offres/1
  # GET /offres/1.json
  def show
    @user = @offre.users
  end

  # GET /offres/new
  def new
    @offre = Offre.new
  end

  # GET /offres/1/edit
  def edit
  end

  # POST /offres
  # POST /offres.json
  def create
    @offre = Offre.new(offre_params)

    respond_to do |format|
      if @offre.save
        format.html { redirect_to @offre, notice: "L'offre a été créée correctement." }
        format.json { render :show, status: :created, location: @offre }
      else
        format.html { render :new }
        format.json { render json: @offre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offres/1
  # PATCH/PUT /offres/1.json
  def update
    @user = current_user
        
    @offre.otes.where(user_id: @user.id).first.update(description: params[:description] )
        
    respond_to do |format|
      if @offre.update(offre_params)
        format.html { redirect_to @offre, notice: "L'offre a été mise à jour correctement." }
        format.json { render :show, status: :ok, location: @offre }
      else
        format.html { render :edit }
        format.json { render json: @offre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offres/1
  # DELETE /offres/1.json
  def destroy
    @offre.destroy
    respond_to do |format|
      format.html { redirect_to offres_url, notice: "L'offre a été détruite correctement." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offre
      @offre = Offre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offre_params
      params.require(:offre).permit(:name, :description)
    end
end
