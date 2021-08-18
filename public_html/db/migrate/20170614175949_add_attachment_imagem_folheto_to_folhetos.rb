class AddAttachmentImagemFolhetoToFolhetos < ActiveRecord::Migration
  def self.up
    change_table :folhetos do |t|
      t.attachment :imagem_folheto
    end
  end

  def self.down
    remove_attachment :folhetos, :imagem_folheto
  end
end
