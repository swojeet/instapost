class FollowsController < ApplicationController

	before_action :authenticate_user!

	def create
		@user= User.find(params[:user_id])
		current_user.follow(@user)

		respond_to do |format|
			format.html {redirect_to user_path(id: @user.id)}
			format.js{}
		end
	end

	def destroy
		@user= User.find(params[:user_id])
		current_user.stop_following(@user)
		
		respond_to do |format|
			format.html {redirect_to user_path(id: @user.id)}
			format.js{}
		end
	end
end