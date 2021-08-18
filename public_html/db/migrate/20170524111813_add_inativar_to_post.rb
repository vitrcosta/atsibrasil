class AddInativarToPost < ActiveRecord::Migration
  def change
    add_column :posts, :inativar, :boolean
  end
end
