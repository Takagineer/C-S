class Business < ApplicationRecord

  belongs_to :company
  has_one_attached :image
  has_many :likes,dependent: :destroy

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

  def like(student)
    likes.create(student_id: student.id)
  end

  def unlike(student)
    likes.create(student_id: student.id).destroy
  end

end
