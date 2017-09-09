class CreateFieldRecordDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :field_record_details do |t|
      t.integer :tree_kind
      t.integer :diameter
      t.integer :height
      t.integer :class
      t.integer :yield
      t.decimal :latitude, precision: 11, scale: 8
      t.string :longitudedecimal, precision: 11, scale:8
      t.references :field_record, foreign_key: true

      t.timestamps
    end
  end
end
