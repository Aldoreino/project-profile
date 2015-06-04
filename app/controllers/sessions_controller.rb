class SessionsController < ApplicationController
	def new
	end
	def create
		params[:email]
		user = User.find_by_email(params[:email]) # creates session for user based on email

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to '/' # redirect the user to root if session is created
		else
			flash[:error] = "Incorrect password or email" # displays error message if session is not created
			render 'sessions/new' # and renders the log in page once again
		end
	end
	def destroy # destroys the session (logs the user out)
		session[:user_id] = nil
		redirect_to '/'
	end
end
