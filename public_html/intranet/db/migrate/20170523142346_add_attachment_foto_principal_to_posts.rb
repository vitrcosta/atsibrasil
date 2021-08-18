class AddAttachmentFotoPrincipalToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :foto_principal
    end
  end

  def self.down
    remove_attachment :posts, :foto_principal
  end
end
