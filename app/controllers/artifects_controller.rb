class ArtifectsController < ApplicationController
  before_action :set_artifect, only: [:show, :edit, :update, :destroy]

  # GET /artifects
  # GET /artifects.json
  def index
    @artifects = Artifect.all
  end

  # GET /artifects/1
  # GET /artifects/1.json
  def show
  end

  # GET /artifects/new
  def new
    @artifect = Artifect.new
  end

  # GET /artifects/1/edit
  def edit
  end

  # POST /artifects
  # POST /artifects.json
  def create
    @artifect = Artifect.new(artifect_params)

    respond_to do |format|
      if @artifect.save
        format.html { redirect_to @artifect, notice: 'Artifect was successfully created.' }
        format.json { render :show, status: :created, location: @artifect }
      else
        format.html { render :new }
        format.json { render json: @artifect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artifects/1
  # PATCH/PUT /artifects/1.json
  def update
    respond_to do |format|
      if @artifect.update(artifect_params)
        format.html { redirect_to @artifect, notice: 'Artifect was successfully updated.' }
        format.json { render :show, status: :ok, location: @artifect }
      else
        format.html { render :edit }
        format.json { render json: @artifect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artifects/1
  # DELETE /artifects/1.json
  def destroy
    @artifect.destroy
    respond_to do |format|
      format.html { redirect_to artifects_url, notice: 'Artifect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artifect
      @artifect = Artifect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artifect_params
      params.require(:artifect).permit(:name, :key, :project_id)
    end
end
