class AgenciesController < ApplicationController
  before_action :set_agency, only: [:show, :edit, :update, :destroy]

  # GET /agencies
  # GET /agencies.json
  def index
    @agencies = Agency.all
  end

  # GET /agencies/1
  # GET /agencies/1.json
  def show
  end

  # GET /agencies/new
  def new
    @agency = Agency.new
  end

  # GET /agencies/1/edit
  def edit
  end

  # POST /agencies
  # POST /agencies.json
  def create
    @agency = Agency.new(agency_params)
    if @agency.save
      redirect_to agencies_path, notice: 'Agência criada com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /agencies/1
  # PATCH/PUT /agencies/1.json
  def update
    if @agency.update(agency_params)
      redirect_to agencies_path, notice: 'Agência atualizada com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /agencies/1
  # DELETE /agencies/1.json
  def destroy
    @agency.destroy
    #redirect_to agencies_path, notice: 'Agência excluída com sucesso.'
    respond_to do |format|
      format.html { redirect_to agencies_path, notice: 'Agência excluída com sucesso.' }
      format.json { redirect_to agencies_path, notice: 'Agência excluída com sucesso.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agency
      @agency = Agency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agency_params
      params.require(:agency).permit(:number, :address)
    end
end
