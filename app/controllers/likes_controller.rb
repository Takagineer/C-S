class LikesController < ApplicationController
  def create
    @business = Business.find(params[:business_id])
    @business.like(current_user)
  end

  def destroy
    @business = Like.find(params[:id]).business
    @business.unlike(current_user)
  end
end
