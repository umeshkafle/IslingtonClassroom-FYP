class CoursesController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course, notice: "#{@course.title} has been created" and return
    end
    render "new"
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(course_params)
      redirect_to @course, notice: "#{@course.title} has been updated!" and return
    end
    render "edit"
  end

  def destroy
    @course = Course.find(params[:id])
    if @course.destroy
      redirect_to courses_path, notice: "#{@course.title} has deleted successfully"
    end
  end

  private

  def course_params
    params.require(:course).permit(:title)
  end
end

