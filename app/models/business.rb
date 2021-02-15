class Business < ApplicationRecord

  belongs_to :company

  with_options presence: true do
    validates :content
    validates :department
    validates :period
    validates :reward
    validates :number
    validates :comment
    validates :skill
  end
  
end
