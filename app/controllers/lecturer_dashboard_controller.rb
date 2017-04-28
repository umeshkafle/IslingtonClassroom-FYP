class LecturerDashboardController < ApplicationController
  def index
  	@courses = Course.all
  	@subjects = Subject.all
  end

  def show
  end
end
