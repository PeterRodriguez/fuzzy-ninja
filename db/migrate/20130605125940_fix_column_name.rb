class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :number_ranges, :client_id, :admin_user_id
  end
end
