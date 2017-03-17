class StesController < ApplicationController
  before_action :set_ste, only: [:show, :edit, :update, :destroy]

  # GET /stes
  # GET /stes.json
  def index
    @stes = Ste.all
  end

  # GET /stes/1
  # GET /stes/1.json
  def show
  end

  # GET /stes/new
  def new
    @ste = Ste.new
  end

  # GET /stes/1/edit
  def edit
  end

  # POST /stes
  # POST /stes.json
  def create
    @ste = Ste.new(ste_params)

    respond_to do |format|
      if @ste.save
        format.html { redirect_to @ste, notice: 'Ste was successfully created.' }
        format.json { render :show, status: :created, location: @ste }
      else
        format.html { render :new }
        format.json { render json: @ste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stes/1
  # PATCH/PUT /stes/1.json
  def update
    respond_to do |format|
      if @ste.update(ste_params)
        format.html { redirect_to @ste, notice: 'Ste was successfully updated.' }
        format.json { render :show, status: :ok, location: @ste }
      else
        format.html { render :edit }
        format.json { render json: @ste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stes/1
  # DELETE /stes/1.json
  def destroy
    @ste.destroy
    respond_to do |format|
      format.html { redirect_to stes_url, notice: 'Ste was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ste
      @ste = Ste.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ste_params
      params.require(:ste).permit(:description, :name)
    end
end
