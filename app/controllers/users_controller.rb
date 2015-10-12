class UsersController < ApplicationController
	

	def show
		@user = User.find_by(params[:session_id])
	end

end
