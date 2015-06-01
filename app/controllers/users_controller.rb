class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end
	def new
		@user = User.new
	end
	def create
		@user = User.new
		if @user.save
			redirect_to '/'
		else 
			render 'new'
		end
	end
end
