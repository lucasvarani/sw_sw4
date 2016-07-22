class CreateBusinesses < ActiveRecord::Migration
  def self.up
    create_table :businesses do |t|
      t.text :description
      t.text :quote
      t.text :mission
      t.text :view
      t.text :values
      t.boolean :published,:null => false, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :businesses
  end
end
