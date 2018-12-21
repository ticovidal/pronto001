class IndcatsController < ApplicationController
  before_action :set_indcat, only: [:show, :edit, :update, :destroy]

  # GET /indcats
  # GET /indcats.json
  def index
    @indcats = Indcat.all
  end

  # GET /indcats/1
  # GET /indcats/1.json
  def show
  end

  # GET /indcats/new
  def new
    @indcat = Indcat.new
  end

  # GET /indcats/1/edit
  def edit
  end

  # POST /indcats
  # POST /indcats.json
  def create
    @indcat = Indcat.new(indcat_params)

    respond_to do |format|
      if @indcat.save
        format.html { redirect_to @indcat, notice: 'Indcat was successfully created.' }
        format.json { render :show, status: :created, location: @indcat }
      else
        format.html { render :new }
        format.json { render json: @indcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indcats/1
  # PATCH/PUT /indcats/1.json
  def update
    respond_to do |format|
      if @indcat.update(indcat_params)
        format.html { redirect_to @indcat, notice: 'Indcat was successfully updated.' }
        format.json { render :show, status: :ok, location: @indcat }
      else
        format.html { render :edit }
        format.json { render json: @indcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indcats/1
  # DELETE /indcats/1.json
  def destroy
    @indcat.destroy
    respond_to do |format|
      format.html { redirect_to indcats_url, notice: 'Indcat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indcat
      @indcat = Indcat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indcat_params
      params.require(:indcat).permit(:industry_id, :category_id)
    end
end
