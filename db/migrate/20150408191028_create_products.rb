class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :title
      t.text :description
      t.boolean :active,:null => false, :default => 1
      t.boolean :published,:null => false, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
