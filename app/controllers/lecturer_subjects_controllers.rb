class LecturerSubjectController < ApplicationController
  def index
    @subjects = Subjects.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = current_user.subjects.new
  end

  def create
    @subject = current_user.subjects.new
    if @subject.save
      redirect_to2s
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
