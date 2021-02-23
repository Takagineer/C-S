class StudentsController < ApplicationController
  def index
  end

  def search
    @student_search_businesses = Business.search(params[:keyword])
  end


  private
    def student_search_businesses
      
    end
end
