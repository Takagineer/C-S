class StudentsController < ApplicationController
  
  def index
  end

  def show
    @students = Student.where(id: params[:id])
  end

  def search
    @student_search_businesses = Business.search(params[:keyword])
  end

end
