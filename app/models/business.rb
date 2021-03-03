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

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

end
