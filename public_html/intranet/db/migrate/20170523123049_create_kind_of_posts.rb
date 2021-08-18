class CreateKindOfPosts < ActiveRecord::Migration
  def change
    create_table :kind_of_posts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
