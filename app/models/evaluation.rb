class Evaluation < ApplicationRecord
  with_options presence: true do
    validates :atmosphere_point
    validates :reward_point
    validates :content_point
    validates :recommendation_point
  end
end
