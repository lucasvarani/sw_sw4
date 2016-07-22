class AddActiveToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :active, :boolean,:null => false, :default => 1
  end
end
