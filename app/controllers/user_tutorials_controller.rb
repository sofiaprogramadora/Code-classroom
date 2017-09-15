class UserTutorialsController < ApplicationController
  before_action :set_user_tutorial, only: [:show, :edit, :update, :destroy]

  # GET /user_tutorials
  # GET /user_tutorials.json
  def index
    @user_tutorials = UserTutorial.all
    @langs = ["CSS", "HTML"]
  end

  # GET /user_tutorials/1
  # GET /user_tutorials/1.json
  def show
  end

  # GET /user_tutorials/new
  def new
    @user_tutorial = UserTutorial.new
    @langs = [:CSS, :HTML]
  end

  # GET /user_tutorials/1/edit
  def edit
  end

  # POST /user_tutorials
  # POST /user_tutorials.json
  def create
    @user_tutorial = UserTutorial.new(user_tutorial_params)

    respond_to do |format|
      if @user_tutorial.save
        format.html { redirect_to @user_tutorial, notice: 'User tutorial was successfully created.' }
        format.json { render :show, status: :created, location: @user_tutorial }
      else
        format.html { render :new }
        format.json { render json: @user_tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_tutorials/1
  # PATCH/PUT /user_tutorials/1.json
  def update
    respond_to do |format|
      if @user_tutorial.update(user_tutorial_params)
        format.html { redirect_to @user_tutorial, notice: 'User tutorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_tutorial }
      else
        format.html { render :edit }
        format.json { render json: @user_tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_tutorials/1
  # DELETE /user_tutorials/1.json
  def destroy
    @user_tutorial.destroy
    respond_to do |format|
      format.html { redirect_to user_tutorials_url, notice: 'User tutorial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_tutorial
      @user_tutorial = UserTutorial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_tutorial_params
      params.require(:user_tutorial).permit(:name, :language, :goal, :content, :code, :files, :images, :embed)
    end
end
