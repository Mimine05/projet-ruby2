class EtusController < ApplicationController
  before_action :set_etu, only: [:show, :edit, :update, :destroy]

  # GET /etus
  # GET /etus.json
  def index
    @etus = Etu.all
  end

  # GET /etus/1
  # GET /etus/1.json
  def show
  end

  # GET /etus/new
  def new
    @etu = Etu.new
  end

  # GET /etus/1/edit
  def edit
  end

  # POST /etus
  # POST /etus.json
  def create
    @etu = Etu.new(etu_params)

    respond_to do |format|
      if @etu.save
        format.html { redirect_to @etu, notice: 'Etu was successfully created.' }
        format.json { render :show, status: :created, location: @etu }
      else
        format.html { render :new }
        format.json { render json: @etu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etus/1
  # PATCH/PUT /etus/1.json
  def update
    respond_to do |format|
      if @etu.update(etu_params)
        format.html { redirect_to @etu, notice: 'Etu was successfully updated.' }
        format.json { render :show, status: :ok, location: @etu }
      else
        format.html { render :edit }
        format.json { render json: @etu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etus/1
  # DELETE /etus/1.json
  def destroy
    @etu.destroy
    respond_to do |format|
      format.html { redirect_to etus_url, notice: 'Etu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etu
      @etu = Etu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def etu_params
      params.require(:etu).permit(:annee, :lieu, :description, :experience_id, :user_id)
    end
end
