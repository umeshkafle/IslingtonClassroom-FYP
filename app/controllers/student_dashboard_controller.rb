class StudentDashboardController < ApplicationController

  before_action :authenticate_user!

  def index
  	#@courses = Course.all
  	@subjects = Subject.all
  end

  def shows
  end

end
