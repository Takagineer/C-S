class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image
  has_many :likes,dependent: :destroy
  has_one :business

  with_options presence: true do
    validates :email
    validates :password
    validates :university
    validates :first_name
    validates :last_name
    validates :student_introduction
    validates :skill
    validates :birthday
    validates :year
  end

  

end
