class ChangeMaterialToText < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :material, :text
  end
end
