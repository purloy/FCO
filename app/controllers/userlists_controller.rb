class UserlistsController < UserdetailsController
	
	before_action :set_userlist, only: [:show, :edit, :update, :destroy]
	
	def index
		@userlist = Userdetail.all
	end

	def show
	end

	def edit
		@typeofuser = Typeofuser.all.map{ |t| [t.user_type, t.id]}
	end

	def update

		@userlist.typeofuser_id = params[:typeofuser_id]
		respond_to do |format|
			if @userlist.update(userlist_params)
				format.html { redirect_to userlist_path(@userlist), notice: 'Userdetail was successfully updated.' }
       			format.json { render :show, status: :ok, location: userlist }
			else
				format.html { render :edit }
        		format.json { render json: @userlist.errors, status: :unprocessable_entity }

			end
		end
	end

	def destroy
	end

	private 

	def set_userlist
		@userlist = Userdetail.find(params[:id])
	end

	def userlist_params
      params.require(:userdetail).permit(:first_name, :middle_name, :last_name, :salutation, :organization, :department, :work_address, :work_mobile, :work_fax, :work_email, :work_internet, :assistant_name, :assistant_tel_no, :note, :date_of_birth, :nationality, :event_invited, :event_attended, :cluster_id, :typeofuser_id)
    end


end
