class ReportsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  # GET /reports
  # GET /reports.json
  def index
    if user_signed_in?
    @reports = Report.all
    @mcluster = Mcluster.all
    else
      redirect_to redirect_to new_user_session_path
    end
  end

  # GET /reports/1
  # GET /reports/1.json
  def show

  end

  # GET /reports/new
  def new
    if user_signed_in?
    redirect_to reports_path
    else
    redirect_to reports_path
    end
    #@report = Report.new
    #@mailername = Mailername.all.map{ |mn| [mn.mailer_name, mn.id] }
  end

  # GET /reports/1/edit
  def edit
    @mailername = Mailername.all.map{ |mn| [mn.mailer_name, mn.id] }
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(report_params)
    @report.mailername_id = params[:mailername_id]

    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: 'Report was successfully created.' }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: 'Report was successfully updated.' }
        format.json { render :show, status: :ok, location: @report }
      else
        format.html { render :edit }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to reports_url, notice: 'Report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params.require(:report).permit(:mailername_id, :invite_sent, :total_recepient, :attending, :unable_to_attend)
    end
end
