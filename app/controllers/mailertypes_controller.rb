class MailertypesController < ApplicationController
  before_action :set_mailertype, only: [:show, :edit, :update, :destroy]

  # GET /mailertypes
  # GET /mailertypes.json
  def index
    @mailertypes = Mailertype.all
  end

  # GET /mailertypes/1
  # GET /mailertypes/1.json
  def show
  end

  # GET /mailertypes/new
  def new
    @mailertype = Mailertype.new
  end

  # GET /mailertypes/1/edit
  def edit
  end

  # POST /mailertypes
  # POST /mailertypes.json
  def create
    @mailertype = Mailertype.new(mailertype_params)

    respond_to do |format|
      if @mailertype.save
        format.html { redirect_to @mailertype, notice: 'Mailertype was successfully created.' }
        format.json { render :show, status: :created, location: @mailertype }
      else
        format.html { render :new }
        format.json { render json: @mailertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mailertypes/1
  # PATCH/PUT /mailertypes/1.json
  def update
    respond_to do |format|
      if @mailertype.update(mailertype_params)
        format.html { redirect_to @mailertype, notice: 'Mailertype was successfully updated.' }
        format.json { render :show, status: :ok, location: @mailertype }
      else
        format.html { render :edit }
        format.json { render json: @mailertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailertypes/1
  # DELETE /mailertypes/1.json
  def destroy
    @mailertype.destroy
    respond_to do |format|
      format.html { redirect_to mailertypes_url, notice: 'Mailertype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailertype
      @mailertype = Mailertype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mailertype_params
      params.require(:mailertype).permit(:mailer_type)
    end
end
