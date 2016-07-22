class CreateProductInformations < ActiveRecord::Migration
  def self.up
    create_table :product_informations do |t|
      t.string :attribute_title
      t.string :value
      t.boolean :active,:null => false, :default => 1
      t.boolean :published,:null => false, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :product_informations
  end
end
