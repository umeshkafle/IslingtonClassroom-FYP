class StudentDashboardController < ApplicationController

  before_action :authenticate_user!

  def index
  	@courses = Course.all
  	@student_subjects = current_user.student_subjects
  end

  def shows
  end

end
