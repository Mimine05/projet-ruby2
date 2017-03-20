class FtusController < ApplicationController
    before_action :set_ftu, only: [:show, :edit, :update, :destroy]

    # GET /ftus
    # GET /ftus.json
    def index
        @ftus = Ftu.all
    end

    # GET /ftus/1
    # GET /ftus/1.json
    def show
    end

    # GET /ftus/new
    def new
        @ftu = Ftu.new
    end

    # GET /ftus/1/edit
    def edit
    end

    # POST /ftus
    # POST /ftus.json
    def create
        @ftu = Ftu.new(ftu_params)

        respond_to do |format|
            if @ftu.save
                format.html { redirect_to users_profiluser_path, notice: 'Ftu was successfully created.' }
                format.json { render :show, status: :created, location: users_profiluser_path }
            else
                format.html { render :new }
                format.json { render json: @ftu.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /ftus/1
    # PATCH/PUT /ftus/1.json
    def update
        respond_to do |format|
            if @ftu.update(ftu_params)
                format.html { redirect_to users_profiluser_path, notice: 'Ftu was successfully updated.' }
                format.json { render :show, status: :ok, location: users_profiluser_path }
            else
                format.html { render :edit }
                format.json { render json: @ftu.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /ftus/1
    # DELETE /ftus/1.json
    def destroy
        @ftu.destroy
        respond_to do |format|
            format.html { redirect_to ftus_url, notice: 'Ftu was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_ftu
        @ftu = Ftu.find(params[:id])
        if params[:formation_id] == true
            @formation = Formation.find(params[:formation_id])
        end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ftu_params
        params.require(:ftu).permit(:annee, :etablissement, :description, :formation_id, :user_id)
    end
end
