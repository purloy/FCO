class UserdetailsController < ApplicationController
  before_action :set_userdetail, only: [:show, :edit, :update, :destroy]

  # GET /userdetails
  # GET /userdetails.json
  def index
    
   if user_signed_in?
  
      @userdetails = Userdetail.search(params[:search])
      @mcluster = Mcluster.all
  
    else
    redirect_to new_user_session_path
   end
 
  end

  # GET /userdetails/1
  # GET /userdetails/1.json
  def show
    @mcluster = Mcluster.all.map { |m| [m.id]}
  end

  # GET /userdetails/new
  def new
    redirect_to userdetails_path
    #@userdetail = Userdetail.new
    #@cluster = Cluster.all.map{ |c| [c.cluster, c.id]}
    #@typeofuser = Typeofuser.all.map{ |t| [t.user_type, t.id] }
  end

  # GET /userdetails/1/edit
  def edit
    @cluster = Cluster.all.map{ |c| [c.cluster, c.id]}
    @typeofuser = Typeofuser.all.map{ |t| [t.user_type, t.id] }
  end
  # POST /userdetails
  # POST /userdetails.json
  def create
    @userdetail = Userdetail.new(userdetail_params)
    @userdetail.cluster_id = params[:cluster_id]
    @userdetail.typeofuser_id = params[:typeofuser_id]
    respond_to do |format|
      if @userdetail.save
        format.html { redirect_to @userdetail, notice: 'Userdetail was successfully created.' }
        format.json { render :show, status: :created, location: @userdetail }
      else
        format.html { render :new }
        format.json { render json: @userdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userdetails/1
  # PATCH/PUT /userdetails/1.json
  def update
    @userdetail.cluster_id = params[:cluster_id]

    respond_to do |format|
      if @userdetail.update(userdetail_params)
        format.html { redirect_to @userdetail, notice: 'Userdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @userdetail }
      else
        format.html { render :edit }
        format.json { render json: @userdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userdetails/1
  # DELETE /userdetails/1.json
  def destroy
    @userdetail.destroy
    respond_to do |format|
      format.html { redirect_to userdetails_url, notice: 'Userdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def user
    

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userdetail
      @userdetail = Userdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userdetail_params
      params.require(:userdetail).permit(:first_name, :middle_name, :last_name, :salutation, :organization, :department, :work_address, :work_mobile, :work_fax, :work_email, :work_internet, :assistant_name, :assistant_tel_no, :note, :date_of_birth, :nationality, :event_invited, :event_attended, :cluster_id, :typeofuser_id)
    end

end
