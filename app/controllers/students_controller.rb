class StudentsController < ApplicationController
  before_action :set_student, only: [:show,:activate]
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate

    @student.active = !@student.active 
    @student.save
      # if @student.active == false
      #   @student.activate = true
      # else @student.active == true
      # @student.activate = false
      # end 
      # @student.save

      redirect_to student_path(@student)

  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end