class AddOrderToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :order, :integer,:null => false, :default => 0
  end
end
