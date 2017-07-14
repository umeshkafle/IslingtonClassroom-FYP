class AssignmentsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_lecturer_subject

  def new
    @subject = Subject.find(params[:subject_id])
    @assignment = current_user.(@subject.assignments).new
    # @assignment = Assignment.new
  end

  def create
    subject = @lecturer_subject.subject
    # @student_subject = StudentSubject.find(params[:id])
    @assignment = current_user.assignments.new(assignments_params.merge(subject: @lecturer_subject, subject: subject))
    if @assignment.save
      redirect_to lecturer_subject_path(@lecturer_subject), notice: "assignment is successfully created for the subject."
    else
      render 'new'
    end
  end

  private

  def set_lecturer_subject
    @lecturer_subject = LecturerSubject.find(params[:lecturer_subject_id])
  end

  def assignments_params
    params.require(:assignment).permit(:title, :attachment, :submission_end_date)
  end
end
