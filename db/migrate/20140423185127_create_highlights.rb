class CreateHighlights < ActiveRecord::Migration
  def self.up
    create_table :highlights do |t|
      t.string :title
      t.string :subtitle
      t.datetime :publication_start
      t.datetime :publication_stop
      t.integer :order,:null => false, :default => 0
      t.boolean :active,:null => false, :default => 1
      t.boolean :published,:null => false, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :highlights
  end
end
