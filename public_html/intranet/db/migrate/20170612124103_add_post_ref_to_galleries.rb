class AddPostRefToGalleries < ActiveRecord::Migration
  def change
    add_reference :galleries, :post, index: true, foreign_key: true
  end
end
