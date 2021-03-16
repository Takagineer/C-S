class AppliedWorksController < ApplicationController
  def create
    @applied_works = AppliedWork.create(business_id:@business.id, student_id:current_student.id, status:1)
    
  end
end
