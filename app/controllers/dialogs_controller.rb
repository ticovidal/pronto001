class DialogsController < ApplicationController
  before_action :set_dialog, only: [:show, :edit, :update, :destroy]
  def speeches
    @mydialog = Dialog.find(session[:dialog]) 
    @count_dialogs = @mydialog.count
    render layout: false
  end
  # GET /dialogs
  # GET /dialogs.json
  def index
    @dialogs = Dialog.all
  end

  # GET /dialogs/1
  # GET /dialogs/1.json
  def show
    if current_user.status == "industry"
      render layout: false
    end
    
    respond_to do |format|

        format.html
        format.js

    end
  end

  # GET /dialogs/new
  def new
    @dialog = Dialog.new
  end

  # GET /dialogs/1/edit
  def edit
  end

  # POST /dialogs
  # POST /dialogs.json
  def create
    @dialog = Dialog.new(dialog_params)

    respond_to do |format|
      if @dialog.save
        format.html { redirect_to @dialog, notice: 'Dialog was successfully created.' }
        format.json { render :show, status: :created, location: @dialog }
      else
        format.html { render :new }
        format.json { render json: @dialog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dialogs/1
  # PATCH/PUT /dialogs/1.json
  def update
    respond_to do |format|
      if @dialog.update(dialog_params)
        format.html { redirect_to @dialog, notice: 'Dialog was successfully updated.' }
        format.json { render :show, status: :ok, location: @dialog }
      else
        format.html { render :edit }
        format.json { render json: @dialog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dialogs/1
  # DELETE /dialogs/1.json
  def destroy
    @dialog.destroy
    respond_to do |format|
      format.html { redirect_to dialogs_url, notice: 'Dialog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dialog
      @dialog = Dialog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dialog_params
      params.require(:dialog).permit(:message, :chat_id, :propose_id, :project_id, :profile_id, speeches_attributes:[:id, :profile_id, :propose_id, :project_id, :dialog_id, :message])
    end
end
