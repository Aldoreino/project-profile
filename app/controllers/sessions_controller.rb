class SessionsController < ApplicationController
	def create
		params[:email]
		user = User.find_by_email(params[:email]) # creates session for user based on email

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to '/' # redirect the user to root if session is created
		else
			flash[:error] = "Incorrect password or email" # displays error message if session is not created
			render 'users/new' # and renders the log in page once again
		end
	end
	def destroy # destroys the session (logs the user out)

	end
end
