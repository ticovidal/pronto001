class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
    #authorize  @profiles
    options_for_select
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    options_for_select
    @proj = Project.all
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
    authorize  @profile
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
          @status = current_user.status
          @profile.update(profileable_type: @status)
          @profile.update(user_id: current_user.id)
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def options_for_select
      if @profile.profileable_type == "industry"
        industry = Industry.find(@profile.profileable_id)
        @mytype = Industry.find(@profile.profileable_id)
        if industry.indcategory_id
         @type_options_for_select = Indcategory.find(industry.indcategory_id)
        end
      elsif @profile.profileable_type == "provider"
        provider = Provider.find(@profile.profileable_id)
        @mytype = Provider.find(@profile.profileable_id)
        @type_options_for_select = Subcategory.where(id: provider.subcategory_ids)
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:user_id, :profileable_id, :profileable_type, :name, :email, :cpf, :phone, :cellphone, adress_attributes:[:id, :street, :number, :compl, :neighborhood, :city, :state, :country, :zip, :profile_id])
    end
end
