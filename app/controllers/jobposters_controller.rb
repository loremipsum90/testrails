class JobpostersController < ApplicationController
  before_action :set_jobposter, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /jobposters or /jobposters.json
  def index
    @jobposters = Jobposter.all
  end

  # GET /jobposters/1 or /jobposters/1.json
  def show
  end

  # GET /jobposters/new
  def new
    #@jobposter = Jobposter.new
    @jobposter = current_user.jobposters.build
  end

  # GET /jobposters/1/edit
  def edit
  end

  # POST /jobposters or /jobposters.json
  def create
    #@jobposter = Jobposter.new(jobposter_params)
    @jobposter = current_user.jobposters.build(jobposter_params)
    respond_to do |format|
      if @jobposter.save
        format.html { redirect_to @jobposter, notice: "Jobposter was successfully created." }
        format.json { render :show, status: :created, location: @jobposter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jobposter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobposters/1 or /jobposters/1.json
  def update
    respond_to do |format|
      if @jobposter.update(jobposter_params)
        format.html { redirect_to @jobposter, notice: "Jobposter was successfully updated." }
        format.json { render :show, status: :ok, location: @jobposter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jobposter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobposters/1 or /jobposters/1.json
  def destroy
    @jobposter.destroy
    respond_to do |format|
      format.html { redirect_to jobposters_url, notice: "Jobposter was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  def correct_user
  @jobposeter = current_user.jobposters.find_by(id: params[:id])
  redirect_to jobposters_path, notice: "Not Authorized to Edit" if @jobposter.nil?
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobposter
      @jobposter = Jobposter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jobposter_params
      params.require(:jobposter).permit(:first_name, :last_name, :job_nature, :phone, :email, :user_id)
    end
end
