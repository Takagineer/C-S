class AppliedWorksController < ApplicationController
before_action :authenticate_student!, only:[:create]

  def create
    @applied_works = AppliedWork.create(business_id:@business.id, student_id:current_student.id)
    redirect to  root_path
  end
end
