class MailerlistsController < ApplicationController
  before_action :set_mailerlist, only: [:show, :edit, :update, :destroy]

  # GET /mailerlists
  # GET /mailerlists.json
  def index
    @mailerlists = Mailerlist.all
    @mcluster = Mcluster.all
  end

  # GET /mailerlists/1
  # GET /mailerlists/1.json
  def show
  end

  # GET /mailerlists/new
  def new
    @mailerlist = Mailerlist.new
    @mailername = Mailername.all.map{ |mn| [mn.mailer_name, mn.id] }
    @mailertype = Mailertype.all.map{ |mt| [mt.mailer_type, mt.id] }
    
  end

  # GET /mailerlists/1/edit
  def edit
    @mailername = Mailername.all.map{ |mn| [mn.mailer_name, mn.id] }
    @mailertype = Mailertype.all.map{ |mt| [mt.mailer_type, mt.id] }
  end

  # POST /mailerlists
  # POST /mailerlists.json
  def create
    @mailerlist = Mailerlist.new(mailerlist_params)
    @mailerlist.mailername_id = params[:mailername_id]
    @mailerlist.mailertype_id = params[:mailertype_id]
    respond_to do |format|
      if @mailerlist.save
        format.html { redirect_to @mailerlist, notice: 'Mailerlist was successfully created.' }
        format.json { render :show, status: :created, location: @mailerlist }
      else
        format.html { render :new }
        format.json { render json: @mailerlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mailerlists/1
  # PATCH/PUT /mailerlists/1.json
  def update
    respond_to do |format|
      if @mailerlist.update(mailerlist_params)
        format.html { redirect_to @mailerlist, notice: 'Mailerlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @mailerlist }
      else
        format.html { render :edit }
        format.json { render json: @mailerlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailerlists/1
  # DELETE /mailerlists/1.json
  def destroy
    @mailerlist.destroy
    respond_to do |format|
      format.html { redirect_to mailerlists_url, notice: 'Mailerlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailerlist
      @mailerlist = Mailerlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mailerlist_params
      params.require(:mailerlist).permit(:mailername_id, :mailertype_id, :description, :recepient)
    end
end
