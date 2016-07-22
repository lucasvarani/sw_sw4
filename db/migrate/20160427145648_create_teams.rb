class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.boolean :published, :default => true, :null => false
      t.boolean :active, :default => true, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :teams
  end
end
