class CreateFieldRecordDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :field_record_details do |t|
      t.integer :bangou
      t.integer :jushu
      t.integer :tyokkei
      t.integer :jukou
      t.integer :hini
      t.decimal :budomari, precision: 3, scale: 2
      t.decimal :lat, precision: 11, scale: 8
      t.decimal :lon, precision: 11, scale: 8
      t.references :field_record, foreign_key: true

      t.timestamps
    end
  end
end
