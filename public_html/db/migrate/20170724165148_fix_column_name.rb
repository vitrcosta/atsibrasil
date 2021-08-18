class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :clientes, :curso, :interesse
  end

  def self.down
  end
end
