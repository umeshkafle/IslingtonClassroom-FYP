class StudentDashboardController < ApplicationController

  before_action :authenticate_user!

  def index
  	@courses = Course.all
  	@student_subjects = StudentSubject.all
  end

  def shows
  end

end
