class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|

      t.text     :content     , null: false
      t.text     :department  , null: false
      t.text     :period      , null: false
      t.text     :reward      , null: false
      t.text     :number      , null: false
      t.text     :comment     , null: false
      t.text     :skill       , null: false
      t.integer  :company_id  , null: false,foreign_key:true

      t.timestamps
    end
  end
end
