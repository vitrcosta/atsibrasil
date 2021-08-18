class ChangeColumnSubtitulo < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.change :subtitulo, :text
    end
  end
end
