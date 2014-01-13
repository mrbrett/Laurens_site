class AddAttachmentImageToHomepageTiles < ActiveRecord::Migration
  def self.up
    change_table :homepage_tiles do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :homepage_tiles, :image
  end
end
