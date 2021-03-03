class Like < ApplicationRecord
  belongs_to :student
  belongs_to :business

  validates :student_id, presence: true
  validates :business_id, presence: true
  validates_uniqueness_of :business_id, scope: :student_id
end
