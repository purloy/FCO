class UsermailerController < ApplicationController
	before_action :set_usermailer, only: [:show]
  def index

    if user_signed_in?

  	 @usermail = Sendmail.new

    else

      redirect_to new_user_session_path

    end

  end

  def new
    
    redirect_to usermailers_path
    #@usermail = Sendmail.new
  end

  def show

  end


  def create
  	@usermail = Sendmail.new(usermailer_params)
  	Usermailer.sendemail(@usermail).deliver_now
  	respond_to do |format|
  		if @usermail.save
  			format.html { redirect_to usermailer_path(@usermail), notice: 'Succesful'}
  			format.json { render :new, status: :sent }
  		else
  			format.html { render :new }
  		end
  	end

  end

  private

  def set_usermailer
  	@usermail = Sendmail.find(params[:id])
  end

  def usermailer_params
  	params.require(:sendmail).permit(:send_from, :send_to, :content)
  end

end
