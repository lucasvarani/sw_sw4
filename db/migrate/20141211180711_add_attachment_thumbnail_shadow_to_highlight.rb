class AddAttachmentThumbnailShadowToHighlight < ActiveRecord::Migration
  def self.up
    add_column :highlights, :thumbnail_shadow_file_name, :string
    add_column :highlights, :thumbnail_shadow_content_type, :string
    add_column :highlights, :thumbnail_shadow_file_size, :integer
    add_column :highlights, :thumbnail_shadow_updated_at, :datetime
  end

  def self.down
    remove_column :highlights, :thumbnail_shadow_file_name
    remove_column :highlights, :thumbnail_shadow_content_type
    remove_column :highlights, :thumbnail_shadow_file_size
    remove_column :highlights, :thumbnail_shadow_updated_at
  end
end
