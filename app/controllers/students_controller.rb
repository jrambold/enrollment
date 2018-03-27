class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    if @student.save
      redirect_to student_path(@student)
    else
      render :edit
    end
  end
end
