class CreateActs < ActiveRecord::Migration[6.0]
  def change
    create_table :acts do |t|
      t.integer :number
      t.references :script
      t.timestamps
    end
  end
end
