class LecturerDashboardController < ApplicationController
  before_action :authenticate_user!
  def index
  	@courses = Course.all
  	@lecturer_subjects = LecturerSubject.all


  	session[:conversations] ||= []
    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
  end

  def show
  end
end
