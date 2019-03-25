class ApplicationController < ActionController::Base
	def authenticate_admins
		if !current_user.admin?
			flash[:notice] = "Adminユーザーではありません"
			redirect_to root_path
		end
	end
end
