class CreateInventories < ActiveRecord::Migration
  def self.up
    create_table :inventories do |t|
			t.integer :card_id, :null => false, :references => [:cards, :id]
      t.integer :copies

      t.timestamps
    end
  end

  def self.down
    drop_table :inventories
  end
end
