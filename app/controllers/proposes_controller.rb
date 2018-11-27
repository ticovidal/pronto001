class ProposesController < ApplicationController
  before_action :set_propose, only: [:show, :edit, :update, :destroy]

  # GET /proposes
  # GET /proposes.json
  def index
    @proposes = Propose.all
  end

  # GET /proposes/1
  # GET /proposes/1.json
  def show
  end

  # GET /proposes/new
  def new
    @propose = Propose.new
  end

  # GET /proposes/1/edit
  def edit
  end

  # POST /proposes
  # POST /proposes.json
  def create
    @propose = Propose.new(propose_params)

    respond_to do |format|
      if @propose.save
        format.html { redirect_to @propose, notice: 'Propose was successfully created.' }
        format.json { render :show, status: :created, location: @propose }
      else
        format.html { render :new }
        format.json { render json: @propose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proposes/1
  # PATCH/PUT /proposes/1.json
  def update
    respond_to do |format|
      if @propose.update(propose_params)
        format.html { redirect_to @propose, notice: 'Propose was successfully updated.' }
        format.json { render :show, status: :ok, location: @propose }
      else
        format.html { render :edit }
        format.json { render json: @propose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposes/1
  # DELETE /proposes/1.json
  def destroy
    @propose.destroy
    respond_to do |format|
      format.html { redirect_to proposes_url, notice: 'Propose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propose
      @propose = Propose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propose_params
      params.require(:propose).permit(:description, :value, :provider_id, :project_id)
    end
end
