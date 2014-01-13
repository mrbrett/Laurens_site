class AddAttachmentUploadToVisuals < ActiveRecord::Migration
  def self.up
    change_table :visuals do |t|
      t.attachment :upload
    end
  end

  def self.down
    drop_attached_file :visuals, :upload
  end
end
