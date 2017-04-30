class StudentSubjectsController < ApplicationController

  def index
    @student = current_user
    @subjects = Subject.all
  end

  def show
  	@subject = Subject.find(params[:id])
    @materials = @subject.materials
    @assignments = @subject.assignments
    @announcements = @subject.announcements
  end

  def new
  	@student_subject = current_user.subjects.new
  end

  def create
  	@subject = current_user.subjects.new
    if @subject.save
      redirect_lecturer_subjects_path
    end
  end
end
