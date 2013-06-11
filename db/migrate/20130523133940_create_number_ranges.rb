class CreateNumberRanges < ActiveRecord::Migration
  def change
    create_table :number_ranges do |t|
      t.integer :client_id
      t.string :range_start, :limit => 17
      t.string :range_end, :limit => 17

      t.timestamps
    end
  end
end
