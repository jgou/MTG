class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.string :english_name
			t.string :spanish_name
      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
