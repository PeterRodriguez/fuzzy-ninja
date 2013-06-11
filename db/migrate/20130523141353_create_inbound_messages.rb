class CreateInboundMessages < ActiveRecord::Migration
  def change
    create_table :inbound_messages do |t|
      t.integer :number_range_id
      t.string :message
      t.string :sender, :limit => 17
      t.string :recipient, :limit => 17

      t.timestamps
    end
  end
end
