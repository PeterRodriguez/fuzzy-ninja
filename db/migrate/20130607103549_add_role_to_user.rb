class AddRoleToUser < ActiveRecord::Migration
  def up
    add_column :users, :role, :string, 
                                    :null => false, 
                                    :default => false 
    User.create! do |r|
      r.email      = 'default@example.com'
      r.password   = 'password'
      r.role = 'admin'
    end
  end

  def down
    remove_column :users, :role
    User.find_by_email('default@example.com').try(:delete)
  end
end
