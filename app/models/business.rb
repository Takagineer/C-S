class Business < ApplicationRecord

  belongs_to :company
  has_one_attached :image


  with_options presence: true do
    validates :content
    validates :department
    validates :period
    validates :reward
    validates :number
    validates :comment
    validates :skill
  end
  
  def self.search(search)
    return Business.all unless search
    Business.where('content LIKE(?)', "%#{search}%")
  end

end
