class MaterialsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_lecturer_subject

  def new
    @material = Material.new
  end

  def create
    subject = @lecturer_subject.subject
    @material = current_user.materials.new(materials_params.merge(subject: @lecturer_subject, subject: subject))
    if @material.save
      redirect_to lecturer_subject_path(@lecturer_subject), notice: "Material is successfully created for the subject."
    else
      render 'new'
    end
  end

  private

  def set_lecturer_subject
    @lecturer_subject = LecturerSubject.find_by(id: [params[:id], params[:lecturer_subject_id]])
  end

  def materials_params
    params.require(:material).permit(:title, :attachment)
  end
end
