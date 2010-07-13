class CreateDrinkers < ActiveRecord::Migration
  def self.up
    create_table :drinkers do |t|
      t.string  :name
      t.integer :espressos
      t.integer :lungos
    end
  end

  def self.down
    drop_table :drinkers
  end
end
