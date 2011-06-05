class CreateExpansions < ActiveRecord::Migration
  def self.up
    create_table :expansions do |t|
      t.string :name
			t.integer :block_id, :null => false, :references => [:blocks,:id]
      t.timestamps
    end
  end

  def self.down
    drop_table :expansions
  end
end
