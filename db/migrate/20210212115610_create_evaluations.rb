class CreateEvaluations < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluations do |t|

      t.integer   :atmosphere_point       , null: false
      t.integer   :reward_point           , null: false
      t.integer   :content_point          , null: false
      t.integer   :recommendation_point   , null: false
      t.timestamps
    end
  end
end
