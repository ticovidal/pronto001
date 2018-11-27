class SubctegoriesController < ApplicationController
  before_action :set_subctegory, only: [:show, :edit, :update, :destroy]

  # GET /subctegories
  # GET /subctegories.json
  def index
    @subctegories = Subctegory.all
  end

  # GET /subctegories/1
  # GET /subctegories/1.json
  def show
  end

  # GET /subctegories/new
  def new
    @subctegory = Subctegory.new
  end

  # GET /subctegories/1/edit
  def edit
  end

  # POST /subctegories
  # POST /subctegories.json
  def create
    @subctegory = Subctegory.new(subctegory_params)

    respond_to do |format|
      if @subctegory.save
        format.html { redirect_to @subctegory, notice: 'Subctegory was successfully created.' }
        format.json { render :show, status: :created, location: @subctegory }
      else
        format.html { render :new }
        format.json { render json: @subctegory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subctegories/1
  # PATCH/PUT /subctegories/1.json
  def update
    respond_to do |format|
      if @subctegory.update(subctegory_params)
        format.html { redirect_to @subctegory, notice: 'Subctegory was successfully updated.' }
        format.json { render :show, status: :ok, location: @subctegory }
      else
        format.html { render :edit }
        format.json { render json: @subctegory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subctegories/1
  # DELETE /subctegories/1.json
  def destroy
    @subctegory.destroy
    respond_to do |format|
      format.html { redirect_to subctegories_url, notice: 'Subctegory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subctegory
      @subctegory = Subctegory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subctegory_params
      params.require(:subctegory).permit(:name, :description, :category_id)
    end
end
