class CreateAppliedWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :applied_works do |t|

      t.integer   :business_id      , null: false,foreign_key:true
      t.integer   :student_id       , null: false,foreign_key:true
      t.integer   :status           , null: false

      t.timestamps
    end
  end
end
