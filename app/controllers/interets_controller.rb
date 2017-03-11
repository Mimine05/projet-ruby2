class InteretsController < ApplicationController
  before_action :set_interet, only: [:show, :edit, :update, :destroy]

  # GET /interets
  # GET /interets.json
  def index
    @interets = Interet.all
  end

  # GET /interets/1
  # GET /interets/1.json
  def show
  end

  # GET /interets/new
  def new
    @interet = Interet.new
  end

  # GET /interets/1/edit
  def edit
  end

  # POST /interets
  # POST /interets.json
  def create
    @interet = Interet.new(interet_params)

    respond_to do |format|
      if @interet.save
        format.html { redirect_to @interet, notice: 'Interet was successfully created.' }
        format.json { render :show, status: :created, location: @interet }
      else
        format.html { render :new }
        format.json { render json: @interet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interets/1
  # PATCH/PUT /interets/1.json
  def update
    respond_to do |format|
      if @interet.update(interet_params)
        format.html { redirect_to @interet, notice: 'Interet was successfully updated.' }
        format.json { render :show, status: :ok, location: @interet }
      else
        format.html { render :edit }
        format.json { render json: @interet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interets/1
  # DELETE /interets/1.json
  def destroy
    @interet.destroy
    respond_to do |format|
      format.html { redirect_to interets_url, notice: 'Interet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interet
      @interet = Interet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interet_params
      params.require(:interet).permit(:categorie, :name)
    end
end
