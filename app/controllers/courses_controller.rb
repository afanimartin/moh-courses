class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  # POST /courses
  def create
    @course = Course.new(course_params)
    
    if @course.save
      flash[:notice] = "Course created successfully!"
      redirect_to root_path
    else
      flash[:alert] = "Error creating course. Please try again."
      render :new
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  # Strong parameters for course
  def course_params
    params.require(:course).permit(:title, :description, :academic_year, :awarding_body, :award_title, :length, :competencies, :outcomes, :contents, :teaching_mode, :assessment_strategy, :tutor_id)
  end
end
