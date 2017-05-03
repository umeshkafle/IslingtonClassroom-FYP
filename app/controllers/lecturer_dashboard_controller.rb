class LecturerDashboardController < ApplicationController
  before_action :authenticate_user!
  def index
  	@courses = Course.all
  	@lecturer_subjects = LecturerSubject.all
  end

  def show
  end
end
