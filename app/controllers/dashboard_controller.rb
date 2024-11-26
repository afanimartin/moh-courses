class DashboardController < ApplicationController
  before_action :authenticate_user!

  def show
    case current_user.role
    when "admin"
      @courses = Course.all
      render "dashboard/admin"
    when "tutor"
      render "dashboard/tutor"
    when "student"
      render "dashboard/student"
    else
      redirect_to root_path, alert: "Unauthorized access"
    end
  end
end
