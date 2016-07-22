class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :title
      t.text :description
      t.boolean :published,:null => false, :default => 1
      t.boolean :active,:null => false, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
