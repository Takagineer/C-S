class AppliedWorksController < ApplicationController
before_action :authenticate_student!, only:[:create]
before_action :authenticate_company!, only:[:index]

  def index
    @applied_works = AppliedWork.where(business_id:params[:business_id])
    @status = AppliedWork.new
  end

  def create
    @applied_works = AppliedWork.create(business_id: params[:business_id], student_id:current_student.id, status:1)
    redirect_to root_path
  end

  def update
    
  end
end
