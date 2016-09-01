class FollowersController < ApplicationController
	def show
		@user = User.find(params[:user_id])	
		@user= @user.followers
	end
end
