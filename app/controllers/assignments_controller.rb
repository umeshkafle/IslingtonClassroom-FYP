class AssignmentsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_subject

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = current_user.assignments.new(assignments_params.merge(subject: @subject))
    if @assignment.save
      redirect_to lecturer_subject_path(@subject), notice: "assignment is successfully created for the subject."
    else
      render 'new'
    end
  end

  private

  def set_subject
    @subject = Subject.find(params[:subject_id])
  end

  def assignments_params
    params.require(:assignment).permit(:title, :attachment)
  end
end
