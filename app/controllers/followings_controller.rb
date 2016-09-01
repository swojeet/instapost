class FollowingsController < ApplicationController
	def show
		@user = User.find(params[:user_id])	
		@user= @user.all_following
	end
end
