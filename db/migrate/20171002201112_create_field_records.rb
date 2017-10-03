class CreateFieldRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :field_records do |t|
      t.integer :kanriku
      t.integer :nendo
      t.integer :rinpan
      t.integer :bakku
      t.integer :shiban
      t.integer :shouhan
      t.integer :kubun
      t.integer :daihyou

      t.timestamps
    end
  end
end
