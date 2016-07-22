class AddQuoteAuthorToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :quote_author, :string
  end
end
