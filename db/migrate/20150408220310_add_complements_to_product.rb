class AddComplementsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :brand, :string
    add_column :products, :style, :string
    add_column :products, :code, :string
  end
end
