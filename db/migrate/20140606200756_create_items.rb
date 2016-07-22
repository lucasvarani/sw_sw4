class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :category_id
      t.string :title
      t.text :description
      t.boolean :active,:null => false, :default => 1
      t.boolean :published,:null => false, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
