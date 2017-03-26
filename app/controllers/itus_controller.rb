class ItusController < ApplicationController
  before_action :set_itu, only: [:show, :edit, :update, :destroy]
  authorize_resource
  
  # GET /itus
  # GET /itus.json
  def index
    @itus = Itu.all
  end

  # GET /itus/1
  # GET /itus/1.json
  def show
  end

  # GET /itus/new
  def new
    @itu = Itu.new
  end

  # GET /itus/1/edit
  def edit
  end

  # POST /itus
  # POST /itus.json
  def create
    @itu = Itu.new(itu_params)

    respond_to do |format|
      if @itu.save
        format.html { redirect_to @itu, notice: "L'intérêt a été créé correctement." }
        format.json { render :show, status: :created, location: @itu }
      else
        format.html { render :new }
        format.json { render json: @itu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itus/1
  # PATCH/PUT /itus/1.json
  def update
    respond_to do |format|
      if @itu.update(itu_params)
        format.html { redirect_to @itu, notice: "L'intérêt a été mis à jour correctement." }
        format.json { render :show, status: :ok, location: @itu }
      else
        format.html { render :edit }
        format.json { render json: @itu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itus/1
  # DELETE /itus/1.json
  def destroy
    @itu.destroy
    respond_to do |format|
      format.html { redirect_to itus_url, notice: "L'intérêt a été détruit correctement." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itu
      @itu = Itu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itu_params
      params.require(:itu).permit(:name, :interet_id, :user_id)
    end
end
