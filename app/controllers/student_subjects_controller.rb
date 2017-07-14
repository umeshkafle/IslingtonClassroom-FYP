class StudentSubjectsController < ApplicationController

  def index
    @student = current_user
    @student_subjects = cuerrent_user.student_subjects

    session[:conversations] ||= []
    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
  end

  def show
  	@student_subject = StudentSubject.find(params[:id])
    @materials = @student_subject.subject.materials
    @assignments = @student_subject.subject.assignments
    @announcements = @student_subject.subject.announcements
  end

  def new
  	@student_subject = current_user.student_subjects.new
  end

  def create
    subjects = params[:student_subject][:student_id].map.with_index{|v,i| v  unless i == 0}.compact
    subjects.each do |subject|
      sub = Subject.find_by_title(subject)
      current_user.student_subjects.find_or_create_by(subject_id: sub.id)
    end
    redirect_to root_url
  end


end
