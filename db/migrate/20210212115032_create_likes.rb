class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|

      t.integer   :business_id, null: false,foreign_key: true
      t.integer   :student_id , null: false,foreign_key: true
      t.timestamps
    end
  end
end
