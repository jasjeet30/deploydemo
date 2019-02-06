class Api::V1::CoursesController < ApplicationController
	before_action :set_course, only: :show
	def index
		courses = Course.all
		json_response(courses, "list of all courses")
	end

	def show
		json_response(@course, "course detail by id")
	end


	private

	  def set_course
	  	@course = Course.find(params[:id])
	  end
end
