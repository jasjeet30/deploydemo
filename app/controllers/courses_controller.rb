class CoursesController < ApplicationController
  # include ActionController::Live
  before_action :set_course, only: [:show]
  def index
    # byebug
    @courses = Course.all
    render stream: true

    # response.headers['Content-Type'] = 'text/event-stream'
    # 100.times {
    #   response.stream.write "hello world\n"
    #   sleep 1
    # }
  ensure
    response.stream.close
  end


  def show
    @course
  end



  private

  def set_course
    @course = Course.find(params[:id])
  end
end
