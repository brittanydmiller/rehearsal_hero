class CreateScripts < ActiveRecord::Migration[6.0]
  def change
    create_table :scripts do |t|
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end
