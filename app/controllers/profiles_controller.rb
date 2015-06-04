class ProfilesController < ApplicationController
	def index
		@profiles = Profile.all
	end
	def new
		@profile = Profile.new
	end
	def create
		@profile = Profile.new(profile_params)
		if @profile.save
			redirect_to '/profiles' # this needs to change! should redirect to new page
		else
			render '/profiles/new' # if the upload is unsuccessful, render the page again
		end
	end
	def show
		@profile = Profile.find(params[:id])
	end
	private
	def profile_params
		params.require(:profile).permit(:content, :picture, :activity)
	end
end
