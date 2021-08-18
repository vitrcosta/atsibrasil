class AddKindofpostIfFromPosts < ActiveRecord::Migration
  def change
    add_column :posts, :kind_of_post_id, :integer
  end
end
