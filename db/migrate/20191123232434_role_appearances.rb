class RoleAppearances < ActiveRecord::Migration[6.0]
  def change
    create_table :role_appearances do |t|
      t.references :rehearsal_block
      t.references :role
    end
  end
end
