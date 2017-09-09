class CreateFieldRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :field_records do |t|
      t.integer :management_area
      t.integer :year
      t.integer :group
      t.string :bakku_area
      t.integer :small_group
      t.integer :area
      t.integer :tree_id

      t.timestamps
    end
  end
end
