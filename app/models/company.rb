class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  with_options presence: true do
    validates :email
    validates :password
    validates :company_name
    validates :company_introduction
  end
end
