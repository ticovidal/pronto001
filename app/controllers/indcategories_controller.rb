class IndcategoriesController < ApplicationController
  before_action :set_indcategory, only: [:show, :edit, :update, :destroy]

  # GET /indcategories
  # GET /indcategories.json
  def index
    @indcategories = Indcategory.all
  end

  # GET /indcategories/1
  # GET /indcategories/1.json
  def show
  end

  # GET /indcategories/new
  def new
    @indcategory = Indcategory.new
  end

  # GET /indcategories/1/edit
  def edit
  end

  # POST /indcategories
  # POST /indcategories.json
  def create
    @indcategory = Indcategory.new(indcategory_params)

    respond_to do |format|
      if @indcategory.save
        format.html { redirect_to @indcategory, notice: 'Indcategory was successfully created.' }
        format.json { render :show, status: :created, location: @indcategory }
      else
        format.html { render :new }
        format.json { render json: @indcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indcategories/1
  # PATCH/PUT /indcategories/1.json
  def update
    respond_to do |format|
      if @indcategory.update(indcategory_params)
        format.html { redirect_to @indcategory, notice: 'Indcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @indcategory }
      else
        format.html { render :edit }
        format.json { render json: @indcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indcategories/1
  # DELETE /indcategories/1.json
  def destroy
    @indcategory.destroy
    respond_to do |format|
      format.html { redirect_to indcategories_url, notice: 'Indcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indcategory
      @indcategory = Indcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indcategory_params
      params.require(:indcategory).permit(:name, :description)
    end
end
