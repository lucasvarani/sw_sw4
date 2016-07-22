class AddServicesPerformedToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :services_performed, :text
  end
end
