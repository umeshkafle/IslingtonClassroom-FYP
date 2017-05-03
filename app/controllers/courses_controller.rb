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
    @subjects = Subject.pluck(:title, :id, :course_id).group_by{|a| a.last}
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def course_params
    params.require(:course).permit(:title, subject_attributes: [:title, :id])
  end
end

