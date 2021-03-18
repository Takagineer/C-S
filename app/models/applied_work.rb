class AppliedWork < ApplicationRecord
  belongs_to :business
  belongs_to :student

  with_options presence: true do
    validates :business_id
    validates :student_id
    validates :status
  end
end
