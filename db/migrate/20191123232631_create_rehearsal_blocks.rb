class CreateRehearsalBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :rehearsal_blocks do |t|
      t.string :name

      t.timestamps
    end
  end
end
