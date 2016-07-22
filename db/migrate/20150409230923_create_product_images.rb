class CreateProductImages < ActiveRecord::Migration
  def self.up
    create_table :product_images do |t|
      t.string :title
      t.integer :order,:null => false, :default => 1
      t.boolean :active,:null => false, :default => 1
      t.boolean :published,:null => false, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :product_images
  end
end
