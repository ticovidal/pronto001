class IndustriesController < ApplicationController
  before_action :set_industry, only: [:show, :edit, :update, :destroy]

  # GET /industries
  # GET /industries.json
  def index
    @industries = Industry.all
  end

  # GET /industries/1
  # GET /industries/1.json
  def show
  end

  # GET /industries/new
  def new
    @industry = Industry.new
    @industry.build_enterprise
    options_for_select
  end

  # GET /industries/1/edit
  def edit
    @industry.build_enterprise unless @industry.enterprise
    options_for_select
  end

  # POST /industries
  # POST /industries.json
  def create
    @industry = Industry.new(industry_params)

    respond_to do |format|
      if @industry.save

          profile = Profile.find(current_user.profile.id)
          profile.update(profileable_id: @industry.id)

        format.html { redirect_to dashboard_industry_path, notice: 'Industry was successfully created.' }
        format.json { render :show, status: :created, location: @industry }
      else
        format.html { render :new }
        format.json { render json: @industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /industries/1
  # PATCH/PUT /industries/1.json
  def update
    respond_to do |format|
      if @industry.update(industry_params)
        format.html { redirect_to @industry, notice: 'Industry was successfully updated.' }
        format.json { render :show, status: :ok, location: @industry }
      else
        format.html { render :edit }
        format.json { render json: @industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industries/1
  # DELETE /industries/1.json
  def destroy
    @industry.destroy
    respond_to do |format|
      format.html { redirect_to industries_url, notice: 'Industry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def options_for_select
      @indcategory_options_for_select = Indcategory.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_industry
      @industry = Industry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def industry_params
      params.require(:industry).permit(:Indcategory_id, :team, :technic, enterprise_attributes:[:id, :company, :social, :cnpj, :enterpriseable_id, :enterpriseable_type], indcats_attributes:[:id, :industry_id, :category_id])
    end
end
