class StudentsController < ApplicationController
  
  def index
    @applied_works = AppliedWork.where(student_id: current_student.id)
  end

  def show
    @student = Student.where(id: params[:id])
  end

  def search
    @student_search_businesses = Business.search(params[:keyword])
  end

end
