class UserSessionsController < ApplicationController
	   def new
	   end

	   def create
			 if login(params[:email], params[:password])
				    redirect_back_or_to(user_path(current_user), message: 'Logged in successfully')
			 else
				    flash.notice = "Login failed, try again"
				    render action: :new
			 end
	   end

	   def destroy
			 logout
			 redirect_to(new_grade_path)
			 flash.notice = "Logged out successfully"
	   end
			 
end
