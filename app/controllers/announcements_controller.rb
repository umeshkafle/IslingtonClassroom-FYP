class AnnouncementsController < ApplicationController
	before_filter :authenticate_user!
  before_filter :set_lecturer_subject

  def new
    @announcement = Announcement.new
  end

  def create
    subject = @lecturer_subject.subject
    @announcement = current_user.announcements.new(announcements_params.merge(subject: @lecturer_subject, subject: subject))
    if @announcement.save
      redirect_to lecturer_subject_path(@lecturer_subject), notice: "Material is successfully created for the subject."
    else
      render 'new'
    end
  end

  private

  def set_lecturer_subject
    @lecturer_subject = LecturerSubject.find(params[:lecturer_subject_id])
  end

  def announcements_params
    params.require(:announcement).permit(:description)
  end
end
