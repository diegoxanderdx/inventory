class CreatePersonalDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_details do |t|
      t.string :username, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :id_type
      t.string :id_number
      t.string :phone_number, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
