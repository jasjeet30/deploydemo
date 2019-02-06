class Api::UsersController < ApplicationController
	def index
		render json: 'api/users'
	end
end
