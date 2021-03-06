class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
  
    show_projects
    authorize  @projects
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
   industry
   session[:passed_variable] = @project.id
    @projectp = Propose.where(project_id:session[:passed_variable]).exists?(provider_id: current_user.profile.profileable_id)
    @allprofile = Profile.all
    @allprovider = Provider.all
    if current_user.status == "provider"
      @mypropose = Propose.find_by(project_id: @project.id)
    end
  end

  # GET /projects/new
  def new
    @project = Project.new
    @project.build_chat
    options_for_select
    render layout: false
  end

  # GET /projects/1/edit
  def edit
     options_for_select
  end
  def confirm
    render layout: false
    
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    respond_to do |format|
      if @project.save
        @chat = Chat.new(project_id: @project.id)
        @chat.save
        @project.update(industry_id: current_user.profile.profileable_id)
        @subcat = Subcategory.find(@project.subcategory_id) 
        @project.update(category_id: @subcat.category_id)
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
        format.js
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    def show_projects
        unless current_user == "admin"
          @profile = current_user.profile
          if @profile.profileable_type == "industry"
               @projects = Project.where(industry_id: @profile.profileable_id)
          elsif @profile.profileable_type == "provider"
               @provider = Provider.find(@profile.profileable_id)
               @projects = Project.where(subcategory_id: @provider.subcategory_ids)
          else
               @projects = Project.all
          end
        end    
    end
    def options_for_select
      @subcategory_options_for_select = Subcategory.all
    end
    def industry
      @industry = Industry.find(@project.industry_id)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:approvedpropose, :status, :name, :description, :end, :subcategory_id, :category_id, :dependency_id, :has_dependency, :industry_id, :visibility, :mincost, :maxcost, proposes_attributes:[:id, :description, :value, :provider_id, :project_id], dialogs_attributes:[:id, :message, :chat_id, :propose_id, :project_id], chat_attributes:[:id, :project_id])
    end
end
