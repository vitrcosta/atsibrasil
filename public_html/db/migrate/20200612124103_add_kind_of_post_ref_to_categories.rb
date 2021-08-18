class AddKindOfPostRefToCategories < ActiveRecord::Migration
  def change
    add_reference :categories, :Kind_of_post, index: true, foreign_key: true
  end
end
