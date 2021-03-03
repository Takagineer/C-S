class LikesController < ApplicationController
  before_action :set_business

  def create
    @like = Like.create(student_id: current_student.id, business_id: params[:business_id])
    @likes = Like.where(business_id: params[:business_id])
  end

  def destroy
    @like = Like.find_by(student_id: current_student.id, business_id: params[:business_id])
    @like.destroy
    @likes = Like.where(business_id: params[:business_id])
  end

  private
    def set_business
      @business = Business.find(params[:business_id])
    end

end
