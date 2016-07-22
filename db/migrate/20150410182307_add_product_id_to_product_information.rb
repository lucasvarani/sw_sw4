class AddProductIdToProductInformation < ActiveRecord::Migration
  def change
    add_column :product_informations, :product_id, :integer
  end
end
