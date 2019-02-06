class LessonsController < ApplicationController

  before_action :set_course, :set_subject, only: [:index, :show]
  before_action :set_lesson, only: [:show]

  def index
    render json: @subject.lessons
  end


  def show
  	render json: @lesson
  end

  private
	  def set_course
	    @course = Course.find(params[:course_id])
	  end

	  def set_subject
	    @subject = @course.subjects.find(params[:subject_id])
	  end

	  def set_lesson
	    @lesson = @subject.lessons.find(params[:id])
	  end
end
