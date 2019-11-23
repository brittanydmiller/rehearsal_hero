class TheatricalProductions < ActiveRecord::Migration[6.0]
  def change
    create_table :theatrical_productions do |t|
      t.string :title
      t.timestamps

      t.references :script, foreign_key: true
    end
  end
end
