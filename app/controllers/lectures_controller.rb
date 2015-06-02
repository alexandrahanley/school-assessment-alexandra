class LecturesController < ApplicationController

  def index
    @lectures = Lecture.all
    @instructor = Instructor.new

    @student = Student.new
    @students = @student.lectures.all

  end

  def show
    @lecture = Lecture.find(params[:id])
    @student = Student.find(params[:id])

    @students = @student.lectures.all


  end

  def new
    @lecture = Lecture.new
  end

  def create
    @lecture = Lecture.new(lecture_params)
    if @lecture.save
      redirect_to lectures_path, notice: "The lecture was created"
    else
      render :new
    end
  end


  def edit
    @lecture = Lecture.find(params[:id])
  end

  def update
    @lecture = Lecture.find(params[:id])
      if @lecture.update(lecture_params)
        redirect_to @lecture, notice: 'Lecture updated!'
      else
      render :edit
    end
  end

  def destroy
    @lecture = Lecture.find(params[:id])
      @lecture.destroy
      redirect_to @lecture, notice: 'Lecture was successfully deleted.'
  end

  def lecture_params
    params.require(:lecture).permit(:subject, :instructor_id, :student_id)
  end

end
