class StudentSubjectsController < ApplicationController

  def index
    @student = current_user
    @subjects = Subject.all
  end

  def show
  	@subject = Subject.find(params[:id])
  end

  def new
  	@student_subject = current_user.subjects.new
  end

  def create
  	@subject = current_user.subjects.new(subject_params)
  	if @subject.save
  		redirect_to student_subjects_path
    else
      render 'new'
    end
  end

  private
  def subject_params
  	params.require(student_subject).permit(:title)
  end
end
