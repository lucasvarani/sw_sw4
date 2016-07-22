class AddHighlightedToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :highlighted, :boolean
  end
end
