class Admins::Base < ApplicationController
	before_action :authenticate_admins
	layout 'admins'
end
