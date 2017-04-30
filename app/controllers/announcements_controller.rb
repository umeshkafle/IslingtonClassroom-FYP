class AnnouncementsController < ApplicationController
	before_filter :authenticate_user!
  	before_filter :set_subject

  def new
    @announcement = Announcement.new
  end

  def create
    @announcement = current_user.announcements.new(announcements_params.merge(subject: @subject))
    if @announcement.save
      redirect_to lecturer_subject_path(@subject), notice: "announcement is successfully created for the subject."
    else
      render 'new'
    end
  end

  private

  def set_subject
    @subject = Subject.find(params[:subject_id])
  end

  def announcements_params
    params.require(:announcement).permit(:description)
  end
end
