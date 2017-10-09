class TutorialMakerAdminsController < ApplicationController
  before_action :set_tutorial_maker_admin, only: [:show, :edit, :update, :destroy]

  # GET /tutorial_maker_admins
  # GET /tutorial_maker_admins.json
  def index
    @tutorial_maker_admins = TutorialMakerAdmin.all
  end

  # GET /tutorial_maker_admins/1
  # GET /tutorial_maker_admins/1.json
  def show
  end

  # GET /tutorial_maker_admins/new
  def new
    @tutorial_maker_admin = TutorialMakerAdmin.new
  end

  # GET /tutorial_maker_admins/1/edit
  def edit
  end

  # POST /tutorial_maker_admins
  # POST /tutorial_maker_admins.json
  def create
    @tutorial_maker_admin = TutorialMakerAdmin.new(tutorial_maker_admin_params)

    respond_to do |format|
      if @tutorial_maker_admin.save
        format.html { redirect_to @tutorial_maker_admin, notice: 'Tutorial maker admin was successfully created.' }
        format.json { render :show, status: :created, location: @tutorial_maker_admin }
      else
        format.html { render :new }
        format.json { render json: @tutorial_maker_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutorial_maker_admins/1
  # PATCH/PUT /tutorial_maker_admins/1.json
  def update
    respond_to do |format|
      if @tutorial_maker_admin.update(tutorial_maker_admin_params)
        format.html { redirect_to @tutorial_maker_admin, notice: 'Tutorial maker admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutorial_maker_admin }
      else
        format.html { render :edit }
        format.json { render json: @tutorial_maker_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorial_maker_admins/1
  # DELETE /tutorial_maker_admins/1.json
  def destroy
    @tutorial_maker_admin.destroy
    respond_to do |format|
      format.html { redirect_to tutorial_maker_admins_url, notice: 'Tutorial maker admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorial_maker_admin
      @tutorial_maker_admin = TutorialMakerAdmin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutorial_maker_admin_params
      params.require(:tutorial_maker_admin).permit(:name, :content, :code)
    end
end
