class LessonsController < ApplicationController
	
  def show
  	respond_to do |format|
  		format.html
  	end
  end

  private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end