class AddInativarToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :inativar, :boolean
  end
end
