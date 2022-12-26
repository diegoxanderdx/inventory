class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :id_type
      t.string :id_number
      t.string :product_name
      t.integer :quantity
      t.integer :group_id
      t.string :material
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
