class MaterialsController < ApplicationController
	before_filter :authenticate_user!
	before_filter :set_subject

	def new
		@material = Material.new
	end

	def create
		@material = current_user.materials.new(materials_params.merge(subject: @subject))
		if @material.save
			redirect_to lecturer_subject_path(@subject), notice: "Material is successfully created for the subject."
		else
			render 'new'
		end
	end

	private

	def set_subject
		@subject = Subject.find(params[:subject_id])
	end

	def materials_params
		params.require(:material).permit(:title, :attachment)
	end
end
