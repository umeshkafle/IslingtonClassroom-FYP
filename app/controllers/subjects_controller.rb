class SubjectsController < ApplicationController

  def index
    @course = Course.find(params[:course_id])
    @subjects = @course.subjects
  end

  def new
    @subject = Subject.new
  end

  def create
    @course = Course.find(params[:course_id])
    @subject = @course.subjects.new(subject_params)

    if @subject.save
      redirect_to course_subjects_path, notice: "The subject has been created!" and return
    end
    render 'new'
  end

  def edit
    @course = Course.find(params[:course_id])
    @subject = @course.subjects.find(params[:id])
  end

  def update
    @course = Course.find(params[:course_id])
    @subject = @course.subjects.find(params[:id])
    if @subject.update_attributes(subject_params)
      redirect_to [@subject.course, @subjects], notice: "#{title} has been updated!" and return
    end

    render 'edit'
  end

  def destroy
    @course = Course.find(params[:course_id])
    @subject = @course.subjects.find(params[:id])
    if @subject.destroy
      redirect_to course_subjects_url, notice: "#{title} has been deleted!" and return
    end
  end
  private
  def subject_params
    params.require(:subject).permit(:title, :subject_code, :attachment)
  end
end
