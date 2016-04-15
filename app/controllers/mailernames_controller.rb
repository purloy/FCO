class MailernamesController < ApplicationController
  before_action :set_mailername, only: [:show, :edit, :update, :destroy]

  # GET /mailernames
  # GET /mailernames.json
  def index
    @mailernames = Mailername.all
  end

  # GET /mailernames/1
  # GET /mailernames/1.json
  def show
  end

  # GET /mailernames/new
  def new
    @mailername = Mailername.new
  end

  # GET /mailernames/1/edit
  def edit
  end

  # POST /mailernames
  # POST /mailernames.json
  def create
    @mailername = Mailername.new(mailername_params)

    respond_to do |format|
      if @mailername.save
        format.html { redirect_to @mailername, notice: 'Mailername was successfully created.' }
        format.json { render :show, status: :created, location: @mailername }
      else
        format.html { render :new }
        format.json { render json: @mailername.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mailernames/1
  # PATCH/PUT /mailernames/1.json
  def update
    respond_to do |format|
      if @mailername.update(mailername_params)
        format.html { redirect_to @mailername, notice: 'Mailername was successfully updated.' }
        format.json { render :show, status: :ok, location: @mailername }
      else
        format.html { render :edit }
        format.json { render json: @mailername.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailernames/1
  # DELETE /mailernames/1.json
  def destroy
    @mailername.destroy
    respond_to do |format|
      format.html { redirect_to mailernames_url, notice: 'Mailername was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailername
      @mailername = Mailername.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mailername_params
      params.require(:mailername).permit(:mailer_name)
    end
end
