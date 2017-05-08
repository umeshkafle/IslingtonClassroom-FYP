class LecturerSubjectsController < ApplicationController
  def index
    @lecturer = current_user
    @lecturer_subjects = LecturerSubject.all
  end

  def show
    @lecturer_subject = LecturerSubject.find(params[:id])
    @materials = @lecturer_subject.subject.materials
    @assignments = @lecturer_subject.subject.assignments
    @announcements = @lecturer_subject.subject.announcements
  end

  def new
    @subject = current_user.subjects.new
  end

  def create
    subjects = params[:lecturer_subject][:lecturer_id].map.with_index{|v,i| v  unless i == 0}.compact
    subjects.each do |subject|
      sub = Subject.find_by_title(subject)
      current_user.lecturer_subjects.find_or_create_by(subject_id: sub.id)
    end
    redirect_to root_url
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
