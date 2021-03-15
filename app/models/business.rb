class Business < ApplicationRecord

  belongs_to :company
  belongs_to :student
  has_one_attached :image
  has_many :likes,dependent: :destroy
  has_many :contracted_works

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

  def liked_by?(student)
    likes.where(student_id: student.id).exists?
  end

  

end
