class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :id_type, null: false
      t.string :id_number, null: false
      t.string :product_name, null: false
      t.integer :quantity, null: false
      t.integer :group_id, null: false
      t.string :material, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
