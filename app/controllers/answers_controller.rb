class AnswersController < ApplicationController

  def new
  	@assignment = Assignment.find(params[:assignment_id])
  	@answer = current_user.(@assignment.answers).new
  end

  def create
  	@assignment = Assignment.find(params[:assignment_id])
  	@answer = @assignment.answers.new(answer_params)
  	@answer.student_id = current_user.id
  	if @answer.save
  		redirect_to student_subject_path(@assignment.subject.id)
  	else
  		render :new
  	end
  end

  private

  def answer_params
  	# binding.pry
  	params.require(:answer).permit(:attachment, :assignment_id)
  end
end
