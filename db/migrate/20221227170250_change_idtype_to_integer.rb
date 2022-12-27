class ChangeIdtypeToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :personal_details, :id_type, 'integer USING CAST(id_type AS integer)'
  end
end
