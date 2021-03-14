class ContractedWork < ApplicationRecord
  belongs_to :student
  belongs_to :business

  with_options presence: true do
    business_id
    student_id
  end
end
