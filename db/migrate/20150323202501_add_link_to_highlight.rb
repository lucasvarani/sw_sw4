class AddLinkToHighlight < ActiveRecord::Migration
  def change
    add_column :highlights, :link, :string
  end
end
