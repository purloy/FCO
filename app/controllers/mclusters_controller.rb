class MclustersController < ApplicationController
  before_action :set_mcluster, only: [:show, :edit, :update, :destroy]

  # GET /mclusters
  # GET /mclusters.json
  def index
    @mclusters = Mcluster.all
  end

  # GET /mclusters/1
  # GET /mclusters/1.json
  def show
  end

  # GET /mclusters/new
  def new
    @mcluster = Mcluster.new
  end

  # GET /mclusters/1/edit
  def edit
  end

  # POST /mclusters
  # POST /mclusters.json
  def create
    @mcluster = Mcluster.new(mcluster_params)

    respond_to do |format|
      if @mcluster.save
        format.html { redirect_to @mcluster, notice: 'Mcluster was successfully created.' }
        format.json { render :show, status: :created, location: @mcluster }
      else
        format.html { render :new }
        format.json { render json: @mcluster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mclusters/1
  # PATCH/PUT /mclusters/1.json
  def update
    respond_to do |format|
      if @mcluster.update(mcluster_params)
        format.html { redirect_to @mcluster, notice: 'Mcluster was successfully updated.' }
        format.json { render :show, status: :ok, location: @mcluster }
      else
        format.html { render :edit }
        format.json { render json: @mcluster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mclusters/1
  # DELETE /mclusters/1.json
  def destroy
    @mcluster.destroy
    respond_to do |format|
      format.html { redirect_to mclusters_url, notice: 'Mcluster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mcluster
      @mcluster = Mcluster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mcluster_params
      params.require(:mcluster).permit(:cluster_name, :feature, :members)
    end
end
