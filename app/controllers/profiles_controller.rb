class ProfilesController < ApplicationController
	def index
		@profiles = Profile.all
	end
	def new
		@profile = Profile.new(profile_params)
	end
	def create
		@profile = Profile.new(profile_params)
		if @profile.save
			redirect_to '/' # this needs to change! should redirect to new page
		else
			render '/' # this needs to change! should not render root if unsuccesful
		end
	end
	def show
		@profile = Profile.find(params[:id])
	end
	private
	def profile_params
		params.require(:profile).permit(:content, :picture)
	end
end
