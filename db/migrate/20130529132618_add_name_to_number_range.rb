class AddNameToNumberRange < ActiveRecord::Migration
  def change
    add_column :number_ranges, :name, :string
  end
end
