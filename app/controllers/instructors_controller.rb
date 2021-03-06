class InstructorsController < ApplicationController

  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      redirect_to instructors_path, notice: "Success!"
    else
      render :new
    end
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])
      if @instructor.update(instructor_params)
        redirect_to @instructor, notice: 'Instructor updated!'
      else
      render :edit
    end
  end

  def destroy
    @instructor = Instructor.find(params[:id])
      @instructor.destroy
      redirect_to @instructor, notice: 'Instructor was successfully deleted.'
  end

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name)
  end

end
