class LecturerSubjectsController < ApplicationController
  def index
    @lecturer = current_user
    @subjects = Subjects.all
  end

  def show
    @subject = Subject.find(params[:id])
    binding.pry
    @materials = @subject.materials
  end

  def new
    @subject = current_user.subjects.new
  end

  def create
    @subject = current_user.subjects.new
    if @subject.save
      redirect_lecturer_subjects_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
