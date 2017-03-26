class OtesController < ApplicationController
  before_action :set_ote, only: [:show, :edit, :update, :destroy]

  # GET /otes
  # GET /otes.json
  def index
    @otes = Ote.all
  end

  # GET /otes/1
  # GET /otes/1.json
  def show
  end

  # GET /otes/new
  def new
    @ote = Ote.new
  end

  # GET /otes/1/edit
  def edit
  end

  # POST /otes
  # POST /otes.json
  def create
    @ote = Ote.new(ote_params)

    respond_to do |format|
      if @ote.save
        format.html { redirect_to @ote, notice: 'Ote was successfully created.' }
        format.json { render :show, status: :created, location: @ote }
      else
        format.html { render :new }
        format.json { render json: @ote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /otes/1
  # PATCH/PUT /otes/1.json
  def update
    respond_to do |format|
      if @ote.update(ote_params)
        format.html { redirect_to @ote, notice: 'Ote was successfully updated.' }
        format.json { render :show, status: :ok, location: @ote }
      else
        format.html { render :edit }
        format.json { render json: @ote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otes/1
  # DELETE /otes/1.json
  def destroy
    @ote.destroy
    respond_to do |format|
      format.html { redirect_to otes_url, notice: 'Ote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ote
      @ote = Ote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ote_params
      params.require(:ote).permit(:name, :description, :offre_id, :secteur_id, :user_id)
    end
end
