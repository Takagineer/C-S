class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :businesses
  has_one_attached :image

  with_options presence: true do
    validates :email
    validates :password
    validates :company_name
    validates :company_introduction
    validates :image
  end
end
