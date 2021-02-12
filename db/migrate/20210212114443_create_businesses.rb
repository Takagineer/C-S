class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|

      t.text     :content     , null: false
      t.string   :department  , null: false
      t.text     :period      , null: false
      t.integer  :reward      , null: false
      t.integer  :number      , null: false
      t.text     :comment     , null: false
      t.string   :skill       , null: false

      t.timestamps
    end
  end
end
