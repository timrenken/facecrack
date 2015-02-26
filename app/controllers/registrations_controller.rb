class RegistrationsController < Devise::RegistrationsController

	def sign_up_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end

	def account_updates_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
	end
	
end