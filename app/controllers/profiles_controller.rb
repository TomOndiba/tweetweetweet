class ProfilesController < ApplicationController
	before_action :authenticate_user!

	def edit
		@user = current_user
	end

	def update
		@user = current_user

		if @user.update(user_params)
			redirect_to edit_profile_path, notice: 'Updated your profile.'
		else
			flash.now[:alert] = @user.errors.full_messages.join('. ')
			render :edit
		end
	end