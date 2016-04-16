class HomeController < ApplicationController
	
  def index

  	if user_signed_in?
  		if current_user.admin == true
  			redirect_to userdetails_path
  		else
  			redirect_to userlists_path
  		end
  	else
  		redirect_to new_user_session_path
  	end

  end
  
end
