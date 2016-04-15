class TypeofusersController < ApplicationController
  before_action :set_typeofuser, only: [:show, :edit, :update, :destroy]

  # GET /typeofusers
  # GET /typeofusers.json
  def index
    @typeofusers = Typeofuser.all
  end

  # GET /typeofusers/1
  # GET /typeofusers/1.json
  def show
  end

  # GET /typeofusers/new
  def new
    @typeofuser = Typeofuser.new
  end

  # GET /typeofusers/1/edit
  def edit
  end

  # POST /typeofusers
  # POST /typeofusers.json
  def create
    @typeofuser = Typeofuser.new(typeofuser_params)

    respond_to do |format|
      if @typeofuser.save
        format.html { redirect_to @typeofuser, notice: 'Typeofuser was successfully created.' }
        format.json { render :show, status: :created, location: @typeofuser }
      else
        format.html { render :new }
        format.json { render json: @typeofuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typeofusers/1
  # PATCH/PUT /typeofusers/1.json
  def update
    respond_to do |format|
      if @typeofuser.update(typeofuser_params)
        format.html { redirect_to @typeofuser, notice: 'Typeofuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @typeofuser }
      else
        format.html { render :edit }
        format.json { render json: @typeofuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typeofusers/1
  # DELETE /typeofusers/1.json
  def destroy
    @typeofuser.destroy
    respond_to do |format|
      format.html { redirect_to typeofusers_url, notice: 'Typeofuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeofuser
      @typeofuser = Typeofuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typeofuser_params
      params.require(:typeofuser).permit(:user_type)
    end
end
