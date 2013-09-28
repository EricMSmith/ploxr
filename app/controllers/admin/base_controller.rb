class Admin::BaseController < ApplicationController
	layout 'admin'
	before_action :admin_user, only: [:index, :show, :new, :create,
																		:edit, :update, :delete, :destroy]

	private

    def admin_user
    	if current_user
    		redirect_to(root_url) unless current_user.admin?
    	else
    		redirect_to(signin_path)
    	end      
    end
end
