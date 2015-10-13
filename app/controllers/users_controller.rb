class UsersController < ApplicationController
	

	def show
		@user = User.find_by(params[:session_id])
		@orders = Order.all.where(donor_id = current_user.id)
	end

end
