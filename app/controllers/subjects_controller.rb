class SubjectsController < ApplicationController

	before_action :set_course, :set_subject, only: [:show]

	def index
		render json: Subject.where(course_id: params[:course_id])
	end


	def show
		render json: @subject
	end


	private

	  def set_course
	  	@course = Course.find(params[:course_id])
	  end

	  def set_subject
	  	@subject = @course.subjects.find(params[:id])
	  end
end
