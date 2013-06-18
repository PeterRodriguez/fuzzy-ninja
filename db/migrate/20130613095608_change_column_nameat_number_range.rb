class ChangeColumnNameatNumberRange < ActiveRecord::Migration
  def change
  	rename_column :number_ranges, :client_id, :user_id
  end
end
