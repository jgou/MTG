class CreateExpansionOfCards < ActiveRecord::Migration
  def self.up
    create_table :expansion_of_cards do |t|
			t.references :card, :null => false
			t.references :expansion, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :expansion_of_cards
  end
end
