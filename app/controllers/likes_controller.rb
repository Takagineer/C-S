class LikesController < ApplicationController
  before_action :authenticate_student!
  before_action :set_business

  def create
    business = Business.find(params[:business_id]) 
    student = current_student
    like = Like.create(business_id: business.id, student_id: student.id)
  end

  def destroy
    business = Business.find(params[:business_id]) 
    student = current_student
    like = Like.find_by(business_id: business.id, student_id: student.id)
    like.destroy
  end

  private
    def set_business
      @business = Business.find(params[:business_id])
    end

end
