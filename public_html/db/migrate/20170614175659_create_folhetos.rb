class CreateFolhetos < ActiveRecord::Migration
  def change
    create_table :folhetos do |t|
      t.string :link_video

      t.timestamps null: false
    end
  end
end
